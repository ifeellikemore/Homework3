//
//  ViewController.swift
//  Homework3
//
//  Created by Olechka on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewElement: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        viewElement.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }

    private func formatSliderValue(value: Float) -> Float {
        round(value * 100) / 100.0
    }
    
    @IBAction func moveRedSlider() {
        redLabel.text = String(formatSliderValue(value: redSlider.value))
        viewElement.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func moveGreenSlider() {
        greenLabel.text = String(formatSliderValue(value: greenSlider.value))
        viewElement.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func moveBlueSlider() {
        blueLabel.text = String(formatSliderValue(value: blueSlider.value))
        viewElement.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}

