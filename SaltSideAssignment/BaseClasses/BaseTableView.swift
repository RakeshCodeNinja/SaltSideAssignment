//
//  BaseTableView.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import Foundation
import UIKit

class BaseTableView: UITableView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        self.keyboardDismissMode = .interactive
    }
}
