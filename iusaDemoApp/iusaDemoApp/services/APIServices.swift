//
//  APIServices.swift
//  iusaDemoApp
//
//  Created by Rafael Villa on 24/04/24.
//

import Foundation
import Alamofire

class APIServices {
    
    let url = "http://localhost:3000/api/findmotos"
    
    init() {
        
    }
    
    func postFindMoto(findMoto: findMotoRequest, completion:@escaping (((Dictionary<String,Any>?) -> Void))) -> Void {
        AF.request(url, method: HTTPMethod.post, parameters: findMoto.dictionary, encoding: JSONEncoding.default).responseJSON { response in
                switch response.result {
                case .success(let value):
                    if let resultJson = value as? Dictionary<String,Any> {
                        print(resultJson)
                        completion(resultJson)
                    }
                case .failure(let error):
                    print(error)
                    completion(nil)
                }
            }
    }

}
