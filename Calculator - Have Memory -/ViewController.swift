//
//  ViewController.swift
//  Calculator - Have Memory -
//
//  Created by Ömer Faruk Kılıçaslan on 3.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var savedResult: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let savedNumber = UserDefaults.standard.object(forKey: "Saved")
        if let newNumber = savedNumber as? String{
            savedResult.text = newNumber
        }
    }
    
    @IBAction func savedButton(_ sender: Any) {
        UserDefaults.standard.set(savedResult.text!, forKey: "Saved")
        savedResult.text = resultLabel.text
        
        
        
        
    }
    
    @IBAction func plus(_ sender: Any) {
        if let num1 = Int(num1.text!), let num2 = Int(num2.text!) {
            resultLabel.text = String(num1 + num2)
        }
        else{
            print("Sayılar Yanlış Formatta")
        }
        
    }
    
    @IBAction func minus(_ sender: Any) {
        if let num1 = Int(num1.text!), let num2 = Int(num2.text!) {
            resultLabel.text = String(num1 - num2)
        }
        else{
            print("Sayılar Yanlış Formatta")
        }
        
    }
    
    @IBAction func division(_ sender: Any) {
        if let num1 = Int(num1.text!), let num2 = Int(num2.text!) {
            resultLabel.text = String(num1 / num2)
        }
        else{
            print("Sayılar Yanlış Formatta")
        }
        
    }
    
    @IBAction func multiplication(_ sender: Any) {
        if let num1 = Int(num1.text!), let num2 = Int(num2.text!) {
            resultLabel.text = String(num1 * num2)
        }
        else{
            print("Sayılar Yanlış Formatta")
        }
        
    }
}

