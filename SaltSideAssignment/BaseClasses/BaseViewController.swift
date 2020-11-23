//
//  BaseViewController.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import Foundation
import UIKit

public class BaseViewController: UIViewController {
        
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register Notification Broadcaster to register protocol to update labels on text change when language will be changed.
        
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
    
        
        self.bindViewModel()
        
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func bindViewModel() {
     
    }
    
   
}
