//
//  Endpoint.swift
//  Vollmed
//
//  Created by Igor fe Castro Figueiredo on 07/08/24.
//

import Foundation

protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var method: RequestMethod { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
}

extension Endpoint {
    var scheme: String {
        return "http"
    }
    
    var host: String {
        return "localhost"
    }
}
