//
//  Datos.swift
//  Hamburguesas
//
//  Created by Joaquín Cerdá Boluda on 18/11/15.
//  Copyright © 2015 Ximo Cerdà. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    
    let paises = ["España", "Francia", "Gran Bretaña", "Bélgica", "Holanda",
                "Italia", "Suiza", "Suecia", "Rusia", "Mónaco",
                "Siria", "Marruecos", "Egipto", "Iran", "Iraq",
                "México", "Venezuela", "El Salvador", "Colombia", "Estados Unidos"]
    
    func obtenPais( )->String {
        let indice = Int(arc4random()) % paises.count
        return paises[indice]
    }
    
}


class ColeccionDeHamburguesa {

    let hamburguesas = ["Barbacoa", "Al Roquefort", "Con jamón", "Con champiñones", "De pescado",
                    "De pollo", "Infantil", "Con cebolla", "Big Mac", "XXL",
                    "Conan", "Gourmet", "Con huevo frito", "Con bacon", "Vegetal",
                    "Happy Meal", "Light", "Al camembert", "De setas", "De tofu"]
    
    func obtenHamburguesa( )->String {
        let indice = Int(arc4random()) % hamburguesas.count
        return hamburguesas[indice]
    }

}
