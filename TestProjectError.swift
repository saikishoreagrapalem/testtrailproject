//
//  TestProjectError.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import Foundation

class TestProjectError : Error {
    
    var type: TestProjectErrorType
    var message : String {
        return TestProjectErrorType.getMessage(forErrorType: type)
    }
    
    init(withType type: TestProjectErrorType = .unknown){
        self.type = type
    }
    
}


enum TestProjectErrorType {
    
    case unknown
    case network
    case badRequest
    case parsing
    
    static func getMessage(forErrorType type: TestProjectErrorType) -> String {
        
        switch type {
        case .unknown:
            return "Something went wrong"
            
        case .network:
            return "Unable to connect to internet. Please try again later"
            
        case .badRequest, .parsing:
            return "Unable to process request right now. Please try again later or contact customer support."
            
        default:
            return "Something went wrong"
        }
        
        
        
    }
}
