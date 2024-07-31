//
//  ViewController.swift
//  MoneyTransfare
//
//  Created by mario on 30/07/2024.
//
import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customBackground()
        
        // Set icons for each text field
        if let fullNameIcon = UIImage(named: "user") {
            setTextFieldRightIcon(fullNameTextField, image: fullNameIcon)
        }
        
        if let emailIcon = UIImage(named: "email") {
            setTextFieldRightIcon(emailTextField, image: emailIcon)
        }
        
        if let passwordIcon = UIImage(named: "eye open") {
            setTextFieldRightIcon(passwordTextField, image: passwordIcon)
        }
    }
    
    @IBAction func signUpBtnTapped(_ sender: UIButton) {
        // Handle sign-up action here
    }
    
    func customBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor(red: 1.0, green: 0.90, blue: 0.93, alpha: 1.0).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setTextFieldRightIcon(_ textField: UITextField, image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        iconView.image = image
        iconView.contentMode = .scaleAspectFit
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
        iconContainerView.addSubview(iconView)
        
        textField.rightView = iconContainerView
        textField.rightViewMode = .always
    }
}
