//
//  ViewController.swift
//  TemperatureConverterApp
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiumLabel: UILabel!
    @IBOutlet weak var fahrenhaitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
            slider.minimumTrackTintColor = .green
            slider.maximumTrackTintColor = .red
        }
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        let celsium = Int(round(sender.value))
        celsiumLabel.text = "\(celsium)ºC"
        
        let fahrenhait = (sender.value * 9 / 5) + 32
        fahrenhaitLabel.text = "\(Int(round(fahrenhait)))ºF"
    }
}

