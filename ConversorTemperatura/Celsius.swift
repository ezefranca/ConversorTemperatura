//
//  Celsius.swift
//  ConversorTemperatura
//
//  Created by QuaddroAdm on 03/10/15.
//  Copyright © 2015 Ezequiel. All rights reserved.
//

import Foundation

class Celsius : Temperatura {
    
    override var kelvin : Temperatura {
        let valor = self.valor + 273.15
        return Kelvin(valor: valor)
    }
    
    override var celsius : Temperatura {
        return Celsius(valor: self.valor)
    }
    
    override var farhrenheit : Temperatura {
        let valor = (self.valor * 1.8) + 32.0
        return Fahrenheit(valor: valor)
    }
    
}











