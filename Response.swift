//
//  Response.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import Foundation


struct Response : Codable {
    
    let status: String?
    let response: DataResponse?
    
}

struct DataResponse : Codable {
    
    let docs: [Docs]?
    
}

struct Docs : Codable {
    
    let abstract: String?
    let web_url: String?
    let snippet: String?
    let lead_paragraph: String?
    let source: String?
    let headline: HeadLine?
    let pub_date: String?
    let document_type: String?
    let section_name: String?
    
}


struct HeadLine : Codable {
    
    let main: String?
    let print_headline: String?
    
}
