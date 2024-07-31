//
//  SignUp2VC.swift
//  MoneyTransfare
//
//  Created by mario on 30/07/2024.
//

import UIKit

class SignUp2VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        customBackground()
    }
    

    func customBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor(red: 1.0, green: 0.90, blue: 0.93, alpha: 1.0).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    

}
