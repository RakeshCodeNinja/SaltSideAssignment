//
//  AppNavigator.swift
//  Uable
//
//  Created by Rakesh Sharma on 6/13/19.
//  Copyright © 2019 Uable Inc. All rights reserved.
//

import Foundation
import UIKit

class AppNavigator: BaseNavigator {
    static let shared = AppNavigator()
    
    init() {
        let initialRoute: Router = RoutersManager.homeScreen
        
        super.init(with: initialRoute)
        
    }
    
    required init(with route: Router) {
        super.init(with: route)
    }
    

}
