//
//  ViewController.swift
//  Arthematicapp
//
//  Created by student on 2/14/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
  
    var selectedActivity:String = "Select Activity"
    let activity = ["Select Activity","Bicycling","Jumping rope","Running - slow","Running - fast","Tennis","Swimming"]
    
    @IBOutlet weak var ActivityPV: UIPickerView!
    
    @IBOutlet weak var WeightTF: UITextField!
    
    @IBOutlet weak var ExcerciseTimeTF: UITextField!
    
    @IBOutlet weak var EnergyConsumedLB: UILabel!
    
    @IBOutlet weak var LooseOnePoundLB: UILabel!

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activity.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedActivity = activity[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activity[row]
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        let wt = Double(WeightTF.text!)
        let ex = Double(ExcerciseTimeTF.text!)
        
        if wt == nil || ex == nil || selectedActivity == "Select Activity"{
            
        }else{
            let consumedEnergy = ExerciseCoach.energyConsumed(during: selectedActivity, weight: wt!, time: ex!)
            let timeToLoseOnePound = ExerciseCoach.timeToLoseOnePound(during:selectedActivity,weight:wt!)
            EnergyConsumedLB.text = "\(consumedEnergy) cal"
            LooseOnePoundLB.text = "\(timeToLoseOnePound) minutes"
        }
        
    }
    
    @IBAction func clear(_ sender: Any) {
   
    selectedActivity = "Select Activity"
        WeightTF.text = ""
        ExcerciseTimeTF.text = ""
        EnergyConsumedLB.text = "0 cal"
        LooseOnePoundLB.text = "0 minutes"
        ActivityPV.selectRow(0, inComponent: 0, animated: true)
        
    }
}
