//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Burak Pala on 13.01.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//
import UIKit
import Foundation
struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String  {
        if bmi != nil{
            let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        }else{
            return "0.0"
        }
        
        
        
    }
    mutating func calculateBMI(height: Float, weight: Float){
        let  bmiValue = weight / (height*height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat More!", color: .blue)
        }else if bmiValue > 18.5 && bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Keep on fit!", color: .green)

        
        }else{
            bmi = BMI(value: bmiValue, advice: "No more eating!", color: .red)
        }
}
}
