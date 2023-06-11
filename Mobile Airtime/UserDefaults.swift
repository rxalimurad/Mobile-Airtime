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
    
}
