//
//  RequestManger.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import Foundation
import Alamofire

class RequestManager {
    
    static let shared = RequestManager()
    
    private init(){
        
    }
    
    let httpHeader : HTTPHeaders = [:]

    func fetchHomeNews(pageCount: Int, completedSuccessfully success: @escaping (Response) -> Void, failedWithError failure: @escaping (TestProjectError)-> Void){
        let request = Alamofire.request(NetworkConstants.EndPoints.articalSearch + "\(pageCount)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: httpHeader)
        RequestHandler.sendRequest(request: request, completedSuccessfully: { (data) in
            if let responseData = data {
                do {                    
                    let successList = try JSONDecoder().decode(Response.self, from: responseData)
                    success(successList)
                } catch let error {
                    print(error)
                    failure(TestProjectError(withType: .parsing))
                }
            } else {
                failure(TestProjectError(withType: TestProjectErrorType.parsing))
            }
        }) { (error) in
            failure(error)
        }
    }
    
}
