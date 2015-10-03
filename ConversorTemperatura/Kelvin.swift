//
//  Kelvin.swift
//  ConversorTemperatura
//
//  Created by QuaddroAdm on 03/10/15.
//  Copyright © 2015 Ezequiel. All rights reserved.
//

import Foundation

class Kelvin : Temperatura {
    
    override var kelvin : Temperatura {
        return Kelvin(valor: self.valor)
    }
    
    override var celsius : Temperatura {
        let valor = self.valor - 273.15
        return Celsius(valor: valor)
    }
    
    override var farhrenheit : Temperatura {
        let valor = (self.valor - 273.15 ) * 1.8 + 32.0
        return Fahrenheit(valor: valor)
    }
}