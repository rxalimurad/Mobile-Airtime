//
//  UserDefaults.swift
//  Mobile Airtime
//
//  Created by Ali Murad on 11/06/2023.
//

import Foundation

extension UserDefaults {
    var showNotification: Bool {
        get {
            UserDefaults.standard.bool(forKey: "showNotification")
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: "showNotification")
        }
    }
    var isFirstTime: Bool {
        get {
            UserDefaults.standard.bool(forKey: "isFirstTime")
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: "isFirstTime")
        }
    }
    
    var isBiomaticOn: Bool {
        get {
            UserDefaults.standard.bool(forKey: "isBiomaticOn")
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: "isBiomaticOn")
        }
    }
    var userName: String {
        get {
            UserDefaults.standard.string(forKey: "userName") ?? ""
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: "userName")
        }
    }
    
    var password: String {
        get {
            UserDefaults.standard.string(forKey: "password") ?? ""
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: "password")
        }
    }
    
}
