//
//  ViewController.swift
//  CodePathPreWork_AlexFreddo
//
//  Created by Alex Freddo on 8/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var randomText: UIButton!
    @IBOutlet var randomBackground: UIButton!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var positionLabel: UILabel!
    
    @IBOutlet var schoolLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        if sender == randomBackground {
            
            let randomColor = changeColor()
            view.backgroundColor = randomColor
            
        } else if sender == randomText {
            
            let randomColor = changeColor()
            nameLabel.textColor = randomColor
            positionLabel.textColor = randomColor
            schoolLabel.textColor = randomColor
            
        }
        
        
        func changeColor() -> UIColor {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
    }
    
}

