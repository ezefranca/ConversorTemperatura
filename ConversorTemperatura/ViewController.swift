//
//  ViewController.swift
//  ConversorTemperatura
//
//  Created by QuaddroAdm on 03/10/15.
//  Copyright © 2015 Ezequiel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var iconImage: UIImageView!
    
    @IBOutlet var labelCelsius : UILabel!
    @IBOutlet var labelFarenheit : UILabel!
    @IBOutlet var labelKelvin : UILabel!
    

    @IBOutlet var sliderCelsius : UISlider!
    @IBOutlet var sliderFarenheit : UISlider!
    @IBOutlet var sliderKelvin : UISlider!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setIconStyle()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setIconStyle() {
        iconImage.image = iconImage.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        iconImage.tintColor = UIColor.redColor()
    }
    
    func updateLabelsValue(){
        labelCelsius.text =  (String)(sliderCelsius.value)
        labelFarenheit.text =  (String)(sliderFarenheit.value)
        labelKelvin.text =  (String)(sliderKelvin.value)
    }
    
    @IBAction func changeTemperatureValue (sender : UISlider){
        switch (sender.tag) {
        case 1:
            let c = Celsius(valor: sliderCelsius.value)
            sliderFarenheit.value = c.farhrenheit.valor
            sliderKelvin.value = c.kelvin.valor
             self.updateLabelsValue()
            
        case 2:
            let f = Fahrenheit(valor: sliderFarenheit.value)
            sliderCelsius.value = f.celsius.valor
            sliderKelvin.value = f.kelvin.valor
             self.updateLabelsValue()
            
        case 3:
            let k = Kelvin(valor: sliderKelvin.value)
            sliderCelsius.value = k.celsius.valor
            sliderFarenheit.value = k.farhrenheit.valor
             self.updateLabelsValue()
        default:
            break;
       
}
        
    }


}

