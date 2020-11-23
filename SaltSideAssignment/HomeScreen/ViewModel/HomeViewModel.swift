//
//  HomeViewModel.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import Foundation
import UIKit

class HomeViewModel: BaseViewModel {
    var modelArray = [SaltSideModel]()
    private let networkCLient = DefaultMoyaNC()
    
    func apiCall(){
        if Reachability.isConnectedToNetwork(){
            networkCLient.request(SaltSideAssignmentAPI.getJSONData) { [weak self] (result: Result<[SaltSideModel]>) in
                switch result {
                case let .success(data):
                    self?.modelArray = data
                    self?.delegate?.updateUI()
                case let .failure(error):
                    self?.showError(message: error.localizedDescription)
                }
            }
        }else{
            self.showError(message: "Internet Connection not Available!")
        }
        
    }
}

extension HomeViewModel: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        modelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell else { return UITableViewCell() }
        cell.titleLabel.text = self.modelArray[indexPath.row].title
        cell.descriptionLabel.text = self.modelArray[indexPath.row].descriptionValue
//        cell.layoutIfNeeded()   
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppNavigator.shared.navigate(to: RoutersManager.detailsViewController(model: self.modelArray[indexPath.row]), with: .push)
    }
}
