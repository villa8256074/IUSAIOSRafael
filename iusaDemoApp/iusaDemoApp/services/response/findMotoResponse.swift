//
//  findMotoResponse.swift
//  iusaDemoApp
//
//  Created by Rafael Villa on 24/04/24.
//

import Foundation

struct findMotoResponse {
    var ok: DarwinBoolean
    var usuario: String
    var motos: [MotosFind]
    
}

struct MotosFind {
    var idMoto: String
    var moto: String
    var bateria1: String
    var bateria2: String
}

