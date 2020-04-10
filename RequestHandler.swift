//
//  RequestHandler.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import Foundation
import Alamofire


class RequestHandler {
    
    static func sendRequest(request: DataRequest, completedSuccessfully success: @escaping (Data?) -> Void, failedWithError failure: @escaping (TestProjectError) -> Void) {
        
        request.response { (response) in
            
            if let statusCode = response.response?.statusCode {
                
                print("Status Code - \(statusCode)")
                
                switch statusCode {
                case 200..<400:
                    print("Success")
                    if let responseData = response.data, let jsonData =  try? JSONSerialization.jsonObject(with: responseData, options: JSONSerialization.ReadingOptions.mutableLeaves){
                        print(jsonData)
                    }
                    success(response.data)
                    
                case 400...500:
                    print("Request Failure")
                    failure(TestProjectError(withType: TestProjectErrorType.badRequest))
                    
                default:
                    failure(TestProjectError(withType: TestProjectErrorType.badRequest))
                }
            } else {
                failure(TestProjectError())
            }
        }
    }
}
