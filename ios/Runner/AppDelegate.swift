import UIKit
import WatchConnectivity
import ActivityKit
import Flutter

@available(iOS 16.1, *)
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var cryptoActivity: Activity<CryptoAttributes>?
    var session: WCSession?
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if let controller = window?.rootViewController as? FlutterViewController {
            
            let channel = FlutterMethodChannel(
                name: "com.xokthilat.titarm",
                binaryMessenger: controller.binaryMessenger)
            
            channel.setMethodCallHandler { [weak self] (
                call: FlutterMethodCall,
                result: @escaping FlutterResult) -> Void in
                
                let methodData = call.arguments as? [String: Any]
                
                // Check if methodData can be decoded into CoinData
                if let data = try? JSONSerialization.data(withJSONObject: methodData!),
                   let coinData = try? JSONDecoder().decode(CoinData.self, from: data) {
                    
                    switch call.method {
                    case "startLiveActivity":
                        self?.startLiveActivity(coin:coinData)
                        result(true);
                    case "updateLiveActivity":
                        self?.updateLiveActivity(coin:coinData)
                        result(true);
                    case "stopLiveActivity":
                        self?.stopLiveActivity(coin:coinData)
                        result(true);
                    case "flutterToWatch":
                        guard let watchSession = self?.session, watchSession.isPaired, watchSession.isReachable, let methodData = call.arguments as? [String: Any] else {
                            result(false)
                            return
                        }

                        let watchData: [String: Any] = methodData

                        watchSession.sendMessage(watchData, replyHandler: nil, errorHandler: nil)
                        result(true)
                    default:
                        result(FlutterMethodNotImplemented)
                    }
                } else {
                    // Handle the case where decoding fails
                    result(FlutterError(code: "DecodingError", message: "Failed to decode JSON data", details: nil))
                }
            }
            
        }
        if WCSession.isSupported() {
            session = WCSession.default;
            session?.delegate = self;
            session?.activate();
        }
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func startLiveActivity(coin: CoinData) {
        let initialContentState = CryptoAttributes.ContentState.init(from: coin)
        let activityAttributes = CryptoAttributes()
        
        do {
            cryptoActivity = try Activity.request(attributes: activityAttributes, contentState: initialContentState)
        } catch (let error) {
            print("Error requesting Live Activity \(error.localizedDescription).")
        }
    }
    
    func updateLiveActivity(coin: CoinData) {
        let updatedCryptoStatus = CryptoAttributes.coin.init(from: coin)
        
        Task {
            await cryptoActivity?.update(using: updatedCryptoStatus)
        }
    }
    
    func stopLiveActivity(coin: CoinData) {
        let finalDeliveryStatus = CryptoAttributes.coin.init(from: coin)
        
        Task {
            await cryptoActivity?.end(using:finalDeliveryStatus, dismissalPolicy: .immediate)
        }
        
    }
    
}
@available(iOS 16.1, *)
extension AppDelegate: WCSessionDelegate {
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            if let method = message["method"] as? String, let controller = self.window?.rootViewController as? FlutterViewController {
                let channel = FlutterMethodChannel(
                    name: "com.xokthilat.titarm",
                    binaryMessenger: controller.binaryMessenger)
                channel.invokeMethod(method, arguments: message)
            }
        }
    }
}
