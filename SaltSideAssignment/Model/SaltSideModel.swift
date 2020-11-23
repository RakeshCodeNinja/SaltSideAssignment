//
//  SaltSideModel.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import Foundation

struct SaltSideModel: Codable {

  enum CodingKeys: String, CodingKey {
    case descriptionValue = "description"
    case title
    case image
  }

  var descriptionValue: String?
  var title: String?
  var image: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    image = try container.decodeIfPresent(String.self, forKey: .image)
  }

}
