//
//  Settings.swift
//  Mobile Airtime
//
//  Created by Ali Murad on 11/06/2023.
//

import UIKit

class Settings: UITableViewController {
    @IBOutlet var swi: UISwitch!
    
    @IBOutlet weak var label: TappableLabel!
    @IBOutlet weak var terms: TappableLabel!
    @IBOutlet weak var pri: TappableLabel!
    override func viewDidLoad() {
        self.navigationItem.title = "Settings"
        
        swi.setOn(UserDefaults.standard.showNotification, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let attributedString = NSMutableAttributedString(attributedString: label.attributedText!)
        
        let url = URL(string: "https://tawk.to/chat/57a32e3e14e2f0af26fe784d/default")!
        label.isUserInteractionEnabled = true
        terms.isUserInteractionEnabled = true
        pri.isUserInteractionEnabled = true
        
        terms.onTapped = {
            UIApplication.shared.open(URL(string: "https://mobileairtimeng.com/termsandconditions")!, options: [:], completionHandler: nil)
        }
        pri.onTapped = {
            UIApplication.shared.open(URL(string: "https://mobileairtimeng.com/privacy")!, options: [:], completionHandler: nil)
        }
        
        label.onTapped = {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }


        
        super.viewWillAppear(animated)
        swi.setOn(UserDefaults.standard.showNotification, animated: true)
    }
    
    
    
    @IBAction func call(_ sender: Any) {
        let phoneNumber = "08135534866" // Replace with the desired phone number
               
               if let phoneURL = URL(string: "tel:\(phoneNumber)") {
                   if UIApplication.shared.canOpenURL(phoneURL) {
                       UIApplication.shared.open(phoneURL, options: [:], completionHandler: nil)
                   } else {
                       // Handle error: Unable to make a phone call
                   }
               }
    }
    
    @IBAction func switchChange(_ sender: Any) {
        UserDefaults.standard.showNotification = (sender as! UISwitch).isOn
    }
    
}

class TappableLabel: UILabel {
    var onTapped: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureGestureRecognizer()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureGestureRecognizer()
    }

    private func configureGestureRecognizer() {
        isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped(_:)))
        addGestureRecognizer(tapGesture)
    }

    @objc private func labelTapped(_ gesture: UITapGestureRecognizer) {
        onTapped?()
    }
}
