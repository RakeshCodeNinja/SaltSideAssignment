//
//  BaseViewModel.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import Foundation
import UIKit

protocol ViewModelDelegate where Self: UIViewController {
    func updateUI()
}

class BaseViewModel: NSObject {
    weak var delegate: ViewModelDelegate?
}
