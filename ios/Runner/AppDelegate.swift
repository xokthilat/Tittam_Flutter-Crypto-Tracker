import UIKit
import ActivityKit
import Flutter

@available(iOS 16.1, *)
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var cryptoActivity: Activity<CryptoAttributes>?
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
                if let data = try? JSONSerialization.data(withJSONObject: methodData),
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
                    default:
                        result(FlutterMethodNotImplemented)
                    }
                } else {
                    // Handle the case where decoding fails
                    result(FlutterError(code: "DecodingError", message: "Failed to decode JSON data", details: nil))
                }
            }

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
