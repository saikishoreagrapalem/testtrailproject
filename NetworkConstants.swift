//
//  NetworkConstants.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//


import Foundation

struct NetworkConstants {
        
    static let baseUrl = "https://api.nytimes.com/svc/search/v2/"
    
    struct EndPoints {
        
        static let articalSearch = NetworkConstants.baseUrl + "articlesearch.json?api-key=5763846de30d489aa867f0711e2b031c&q=unitedstates&page="
        
    }
    
    
}
