//
//  ViewController.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import UIKit

class ViewController: BaseViewController {
    @IBOutlet weak var tableView: BaseTableView!
    
    
    
    var viewModel: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.delegate = self
        tableView.register(R.nib.homeTableViewCell)
        tableView.delegate = viewModel
        tableView.dataSource = viewModel
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.reloadData()
        
        
        self.viewModel?.apiCall()
        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    
}

extension ViewController: ViewModelDelegate {
    func updateUI() {
        tableView.reloadData()
    
    }
}
