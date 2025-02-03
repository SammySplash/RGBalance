//
//  ViewController.swift
//  RGBalance
//
//  Created by Samoilik Hleb on 02/02/2025.
//

import UIKit

final class ViewController: UIViewController {
    
    
    // MARK: - IB Outlets
    @IBOutlet private var colorChangingView: UIView!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorChangingView.layer.cornerRadius = 20
        updateColor()
    }
    
    @IBAction private func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    private func updateColor() {
            let redValue = CGFloat(redSlider.value)
            let greenValue = CGFloat(greenSlider.value)
            let blueValue = CGFloat(blueSlider.value)
            
            colorChangingView.backgroundColor = UIColor(
                red: redValue,
                green: greenValue,
                blue: blueValue,
                alpha: 1.0
            )
        }
}

