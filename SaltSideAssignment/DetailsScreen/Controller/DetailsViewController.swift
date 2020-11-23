//
//  DetailsViewController.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import UIKit

class DetailsViewController: BaseViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var viewModel: DetailsViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.titleLabel.text = viewModel?.model?.title
        self.descriptionLabel.text = viewModel?.model?.descriptionValue
        self.imageView.setImageFromUrl(viewModel?.model?.image ?? "")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

}
