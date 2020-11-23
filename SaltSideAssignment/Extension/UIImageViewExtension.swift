//
//  UIImageViewExtension.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    func setImageFromUrl(_ url: String, placeholder: UIImage? = nil) {
        guard let url = URL(string: url) else { return }
        let processor = DownsamplingImageProcessor(size: self.bounds.size)
                     |> RoundCornerImageProcessor(cornerRadius: 12)
        self.kf.indicatorType = .activity
        self.kf.setImage(
            with: url,
            placeholder: placeholder,
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        {
            result in
            switch result {
            case .success(let value):
                print("Task done for: \(value.source.url?.absoluteString ?? "")")
            case .failure(let error):
                print("Job failed: \(error.localizedDescription)")
            }
        }
    }
}
