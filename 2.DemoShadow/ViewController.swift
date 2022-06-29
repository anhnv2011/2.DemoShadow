//
//  ViewController.swift
//  2.DemoShadow
//
//  Created by MAC on 6/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shadowButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shadowButton.layer.masksToBounds = false
        shadowButton.layer.cornerRadius = 24
        shadowButton.layer.shadowColor = UIColor.blue.cgColor
        shadowButton.layer.shadowOffset = .init(width: 50, height: 50)
        shadowButton.layer.shadowOpacity = 0.8
        shadowButton.layer.shadowRadius = 24
        let shadowLayer = CAShapeLayer()
        let shadowPath = UIBezierPath(roundedRect: shadowButton.bounds, cornerRadius: 16)
        
        shadowLayer.fillColor = UIColor.green.cgColor
        shadowLayer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        shadowLayer.shadowRadius = 24
        shadowLayer.shadowColor = UIColor.white.cgColor
        shadowLayer.shadowOpacity = 0.9
        shadowLayer.shadowPath = shadowPath.cgPath
        
        shadowButton.layer.insertSublayer(shadowLayer, at: 0)
        
        
//        let shadowLayer = CAShapeLayer()
//        let shadowPath = UIBezierPath(ovalIn: CGRect(x: shadowButton.bounds.minX, y: shadowButton.bounds.maxY+5, width: continueButton.bounds.width, height: 10))
//        shadowLayer.shadowColor = UIColor.yellow.cgColor
//        shadowLayer.shadowOpacity = 0.9
//        shadowLayer.shadowPath = shadowPath.cgPath
//
//        shadowButton.layer.insertSublayer(shadowLayer, at: 0)
        
        
    }
    
    
}

