//
//  ViewController.swift
//  Traffic light 10
//
//  Created by Tatiana Sosina on 10.03.2022.
//

import UIKit

final class ViewController: UIViewController {
    enum ColorTrafficLight {
        case red
        case yellow
        case green
    }

    // MARK: - Private property
    
    @IBOutlet weak private var trafficLightView: UIView!
    @IBOutlet weak private var redColorTrafficLightView: UIView!
    @IBOutlet weak private var yellowColorTrafficLightView: UIView!
    @IBOutlet weak private var greenColorTrafficLightView: UIView!
    @IBOutlet weak private var trafficLightButton: UIButton!
    
    private var colorTrafficLight: ColorTrafficLight = .red
    
    // MARK: - Internal func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultSettings()
    }

    // MARK: - Private func
    
    @IBAction private func switchTrafficLightButton() {
        switchColorsTrafficLight()
    }
    
    private func setDefaultSettings() {
        trafficLightView.layer.cornerRadius = 22
        
        redColorTrafficLightView.layer.cornerRadius = redColorTrafficLightView.frame.height / 1.7
        redColorTrafficLightView.backgroundColor = .red.withAlphaComponent(0.3)
        
        yellowColorTrafficLightView.layer.cornerRadius = yellowColorTrafficLightView.frame.height / 1.7
        yellowColorTrafficLightView.backgroundColor = .yellow.withAlphaComponent(0.3)
        
        greenColorTrafficLightView.layer.cornerRadius = greenColorTrafficLightView.frame.height / 1.7
        greenColorTrafficLightView.backgroundColor = .green.withAlphaComponent(0.3)
        
        trafficLightButton.layer.cornerRadius = 19
        trafficLightButton.setTitle("Start", for: .normal)
    }
    
    private func switchColorsTrafficLight() {
        trafficLightButton.setTitle("Next", for: .normal)
        
        switch colorTrafficLight {
        case .red:
            greenColorTrafficLightView.backgroundColor = .green.withAlphaComponent(0.3)
            redColorTrafficLightView.backgroundColor = .red
            colorTrafficLight = .yellow
        case .yellow:
            yellowColorTrafficLightView.backgroundColor = .yellow
            redColorTrafficLightView.backgroundColor = .red.withAlphaComponent(0.3)
            colorTrafficLight = .green
        case .green:
            greenColorTrafficLightView.backgroundColor = .green
            yellowColorTrafficLightView.backgroundColor = .yellow.withAlphaComponent(0.3)
            colorTrafficLight = .red
        }
    }
}

