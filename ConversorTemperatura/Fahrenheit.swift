//
//  Fahrenheit.swift
//  ConversorTemperatura
//
//  Created by QuaddroAdm on 03/10/15.
//  Copyright © 2015 Ezequiel. All rights reserved.
//

import Foundation

class Fahrenheit : Temperatura {
    
    override var kelvin : Temperatura {
        let valor = ((self.valor - 32.0) / 1.8) + 273.15
        return Kelvin(valor: valor)
    }
    
    override var celsius : Temperatura {
        let valor = (self.valor - 32.0) / 1.8
        return Celsius(valor: valor)
    }
    
    override var farhrenheit : Temperatura {
        return Fahrenheit(valor: self.valor)
    }
    
}