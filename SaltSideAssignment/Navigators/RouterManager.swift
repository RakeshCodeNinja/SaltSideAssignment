//
//  RouterManager.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import Foundation
import UIKit

enum RoutersManager: Router {
    case homeScreen
    case detailsViewController(model: SaltSideModel)

    var screen: UIViewController {
        switch self {
        case .homeScreen:
            guard let vController = R.storyboard.main.viewController() else { return UIViewController() }
            vController.viewModel = HomeViewModel()
            return vController
        
        case .detailsViewController(let model):
            let vController = DetailsViewController(nib: R.nib.detailsViewController)
            vController.viewModel = DetailsViewModel()
            vController.viewModel?.model = model
            return vController
        }
    }
}
