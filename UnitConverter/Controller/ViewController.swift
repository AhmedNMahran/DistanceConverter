//
//  ViewController.swift
//  UnitConverter
//
//  Created by Ahmed Nabil on 12/22/21.
//

import UIKit

class ViewController: UIViewController {

    var distance = Distance(miles: 60)
    
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var kilometersTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        milesTextField.text = "\(distance.miles)"
        kilometersTextField.text = "\(distance.km)"
    }
    
    @IBAction func convertToKm(_ sender: Any){
        if let milesText = milesTextField.text,
           let milesDouble = Double(milesText) {
            distance.miles = milesDouble
        }
        updateUI()
    }
    
    @IBAction func convertToMiles(_ sender: Any){
        if let kmText = kilometersTextField.text,
           let kmDouble = Double(kmText) {
            distance.km = kmDouble
        }
        updateUI()
    }

}

