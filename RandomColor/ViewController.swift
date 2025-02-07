//
//  ViewController.swift
//  RandomColor
//
//  Created by Seol WooHyeok on 2/7/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // ✅ customView의 배경색 변경
        
    }
    
    @IBAction func changeColorView(_ sender: UIButton) {
        let (R, G, B) = generateRandomRGB()
        
        colorView.backgroundColor = UIColor(red: R, green: G, blue: B, alpha: 1.0)
        
        colorLabel.text = convertRGBToString(red: R, green: G, blue: B)
    }
    
    @IBAction func resetColorView(_ sender: Any) {
        colorView.backgroundColor = UIColor.white
        
        colorLabel.text = convertRGBToString(red: 1, green: 1, blue: 1)
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

