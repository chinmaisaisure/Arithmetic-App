//
//  ExerciseCoach.swift
//  Arthematicapp
//
//  Created by student on 2/14/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
class ExerciseCoach{
    static let sports:[String:Double] = ["Bicycling":8.0,"Jumping rope":12.3,"Running - slow":9.8,"Running - fast":23.0,"Tennis":8.0,"Swimming":5.8]
    static let kg:Double = 2.2
    static func energyConsumed(during: String,weight: Double,time: Double) -> Double{
        let sport = sports[during]!
        let consumedEnergy:Double = Double(String(format: "%.1f", ((sport * 3.5 * (weight/kg))/200)*time))!
        return consumedEnergy
        
    }//end of method energy consumed
    
    static  func timeToLoseOnePound(during: String,weight: Double) -> Double{
        
        let sport:Double = sports[during]!
        let timeToLoseOnePound:Double = Double(String(format: "%.1f",(3500/((sport * 3.5 * (weight/kg))/200))))!
        return timeToLoseOnePound
        
    }//end of method time To loase 1 pound
    
}//end of struct
