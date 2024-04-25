//
//  findMotoRequest.swift
//  iusaDemoApp
//
//  Created by Rafael Villa on 24/04/24.
//

import Foundation

struct findMotoRequest: Codable {
    var name: String = ""
    var phone: String = ""
    var mail: String = ""
    
    var dictionary: [String: Any] {
        return ["name": name,
                "phone": phone,
                "mail": mail]
    }
    
    var nsDictionary: NSDictionary {
        return dictionary as NSDictionary
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case phone = "phone"
        case mail = "mail"
        
    }
    
}



