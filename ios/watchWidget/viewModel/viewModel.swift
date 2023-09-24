//
//  viewModel.swift
//  trackwatch Watch App
//
//  Created by mikasaloli on 24/09/2023.
//

import Foundation
import WatchConnectivity
import WidgetKit



@available(iOS 15.0, *)
class ViewModel: NSObject, ObservableObject, WCSessionDelegate, TimelineEntry {
    
    var date: Date
    
    private let configuration: ConfigurationIntent
    
    ///hard code for now need to change logic to loop from api later
    var session: WCSession
    @Published var cryptoName = "BTC"
    @Published var cryptoPrice = ""
    @Published var cryptoChange = "25,245 $"
    @Published var cryptoImageUrl = ""
    
    
    init(session: WCSession = .default,date: Date, configuration: ConfigurationIntent) {
        self.session = session
        self.date = date
        self.configuration = configuration
        super.init()
        self.session.delegate = self
        session.activate()
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
#if os(iOS)
    public func sessionDidBecomeInactive(_ session: WCSession) { }
    public func sessionDidDeactivate(_ session: WCSession) {
        session.activate()
    }
#endif
    
    // Receive message From AppDelegate.swift that send from iOS devices
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.cryptoName = (message["name"] as? String) ?? ""
            self.cryptoPrice = (message["price"] as? String) ?? ""
            self.cryptoChange = (message["change"] as? String) ?? ""
            self.cryptoImageUrl = (message["image"] as? String) ?? ""
            
        }
    }
    
    
    func sendMessage(for method: String, data: [String: Any] = [:]) {
        
        guard session.isReachable else {
            return
        }
        let messageData: [String: Any] = ["method": method, "data": data]
        session.sendMessage(messageData, replyHandler: nil, errorHandler: nil)
    }
    
}

