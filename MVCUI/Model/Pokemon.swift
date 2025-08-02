//
//  Pokemon.swift
//  MVCUI
//
//  Created by Victoria Ortega on 01/08/25.
//

import Foundation

struct Pokemon {
    let image: Int
    let name: String
    let movimiento: String
    let habilidad: String

    init(imageId: Int, name: String, movimiento: String, habilidad: String) {
        self.image = imageId
        self.name = name
        self.movimiento = movimiento
        self.habilidad = habilidad
    }
}
