//
//  Temperatura.swift
//  ConversorTemperatura
//
//  Created by QuaddroAdm on 03/10/15.
//  Copyright © 2015 Ezequiel. All rights reserved.
//

import Foundation

class Temperatura : Medida
{
    var kelvin : Temperatura {
        return Temperatura(valor: 0.0)
    }
    
    var celsius : Temperatura {
        return Temperatura(valor: 0.0)
    }
    
    var farhrenheit : Temperatura {
        return Temperatura(valor: 0.0)
    }
}