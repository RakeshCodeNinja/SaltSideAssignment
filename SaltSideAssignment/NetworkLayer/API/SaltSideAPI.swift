//
//  SaltSideAPI.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

//https://gist.githubusercontent.com/ashwini9241/6e0f26312ddc1e502e9d280806eed8bc/raw/7fab0cf3177f17ec4acd6a2092fc7c0f6bba9e1f/saltside-json-data

import Foundation
import Moya

enum SaltSideAssignmentAPI {
    case getJSONData
}

extension SaltSideAssignmentAPI: MoyaTargetType, CacheTarget {

    var baseURL: URL { return URL(string: "https://gist.githubusercontent.com/ashwini9241/6e0f26312ddc1e502e9d280806eed8bc/raw/7fab0cf3177f17ec4acd6a2092fc7c0f6bba9e1f/")! }

    var route: Route {
        switch self {
        case .getJSONData: return .get("saltside-json-data")
        }
    }

    var sampleData: Data {
        return Data()
    }

    var task: Task {
        switch self {
        case .getJSONData: return .requestPlain
        }
    }

    var cachePolicy: MoyaCachePolicy {
        switch self {
        case .getJSONData: return .reloadIgnoringCacheData
        }
    }
}


