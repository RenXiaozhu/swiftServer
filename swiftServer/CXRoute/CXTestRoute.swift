//
//  CXTestRoute.swift
//  swiftServerPackageDescription
//
//  Created by MacMini2 on 2017/12/27.
//

import Foundation
import PerfectHTTP

class TestRoute {
    var testRoute = Routes()
    
    init() {
        testRoute.add(method: .get, uri: "/") { (request, response) in
            response.setHeader(.contentType, value: "text/html")
            response.appendBody(string: "<html><title>Hello, world!</title><body>Hello, world!</body></html>")
            response.completed()
        }
    }
} 
