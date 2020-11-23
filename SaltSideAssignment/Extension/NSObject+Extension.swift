//
//  NSObject+Extension.swift
//  Map
//
//  Created by Rakesh Sharma on 07/11/20.
//

import Foundation
import SwiftMessages

extension NSObject {
    func showSuccess(message: String = "Something good happened!") {
        let success = MessageView.viewFromNib(layout: .tabView)
        success.configureTheme(.success)
        success.configureDropShadow()
        success.configureContent(title: "Success", body: message)
        success.button?.isHidden = true
        var successConfig = SwiftMessages.defaultConfig
        successConfig.presentationStyle = .top
        successConfig.duration = .seconds(seconds: 1.0)
        successConfig.presentationContext = .window(windowLevel: UIWindow.Level.normal)
        SwiftMessages.show(config: successConfig, view: success)
    }
    
    func showError(message: String = "Something good happened!") {
        let error = MessageView.viewFromNib(layout: .tabView)
        error.configureTheme(.error)
        error.configureContent(title: "Error", body: message)
        error.button?.isHidden = true
        var errorConfig = SwiftMessages.defaultConfig
        errorConfig.presentationStyle = .top
        errorConfig.presentationContext = .window(windowLevel: UIWindow.Level.normal)
        SwiftMessages.show(config: errorConfig, view: error)
    }
    
    func showInfo(message: String = "This is a very lengthy and informative info message that wraps across multiple lines and grows in height as needed.") {
        let info = MessageView.viewFromNib(layout: .messageView)
        info.configureTheme(.info)
        info.button?.isHidden = true
        info.configureContent(title: "Information", body: message)
        var infoConfig = SwiftMessages.defaultConfig
        infoConfig.presentationStyle = .top
        infoConfig.duration = .seconds(seconds: 3.0)
        SwiftMessages.show(config: infoConfig, view: info)
    }
}
