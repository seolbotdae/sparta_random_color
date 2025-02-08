//
//  ViewController.swift
//  RandomColor
//
//  Created by Seol WooHyeok on 2/7/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    let rgbLabel: UILabel = .init()
    let changeColorButton: UIButton = .init()
    let resetButton: UIButton = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // MARK: view setting
        view.backgroundColor = .systemBackground
        
        // MARK: rgbLabel setting
        view.addSubview(rgbLabel)
        rgbLabel.text = "R: 255, G: 255, B: 255"
        
        rgbLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            rgbLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rgbLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // MARK: changeColorButton setting
        view.addSubview(changeColorButton)
        changeColorButton.configuration = UIButton.Configuration.tinted()
        changeColorButton.configuration?.title = "Change Color"
        
        changeColorButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            changeColorButton.topAnchor.constraint(equalTo: rgbLabel.bottomAnchor, constant: 100),
            changeColorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        changeColorButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        
        // MARK: resetButton setting
        view.addSubview(resetButton)
        resetButton.configuration = UIButton.Configuration.tinted()
        resetButton.configuration?.title = "Reset"
        
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resetButton.topAnchor.constraint(equalTo: changeColorButton.bottomAnchor, constant: 50),
            resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        resetButton.addTarget(self, action: #selector(resetColor), for: .touchUpInside)
    }
    
    @objc func changeColor() {
        let (R, G, B) = generateRandomRGB()
        
        view.backgroundColor = UIColor(red: R, green: G, blue: B, alpha: 1.0)
        
        rgbLabel.text = convertRGBToString(red: R, green: G, blue: B)
    }
    
    @objc private func resetColor() {
        view.backgroundColor = UIColor.white
        
        rgbLabel.text = convertRGBToString(red: 1, green: 1, blue: 1)
    }
    
    private func generateRandomRGB() -> (CGFloat, CGFloat, CGFloat) {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        return (randomRed, randomGreen, randomBlue)
    }
    
    private func convertRGBToString(red: CGFloat, green: CGFloat, blue: CGFloat) -> String {
        let R = Int(red * 255)
        let G = Int(green * 255)
        let B = Int(blue * 255)
        
        return "R: \(R), G: \(G), B: \(B)"
    }
}

struct PreView: PreviewProvider {
    static var previews: some View {
        ViewController().toPreview()
    }
}

