//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Angel Osoria on 2023-02-21.
//

import Foundation


final class CalculatorViewModel: ObservableObject{
    
    @Published var digitsAcc:[String] = []
    @Published var firstDigit:Float = 0
    @Published var secondDigit:Float = 0
    @Published var firstResult: Float = 0
    @Published var oper:String = ""
    @Published var finalResult:String! = "0"
    
    

    
    
    func getCalculatorAction(btn:String){
        
        switch btn {
        case "1", "2", "3","4", "5", "6", "7", "8", "9", "0":
            digitsAcc.append(btn)
            finalResult = (digitsAcc.joined())
        case "/","x","-","+":
            if( btn == "x"){ oper = "*" }
            else{
                oper = btn
            }
             
            
            
            if(firstDigit == 0){
                let joinedFirstDigit =   digitsAcc.joined()
                firstDigit =  (joinedFirstDigit as NSString).floatValue
                
              
               
            }
            digitsAcc = []
         
        case "=":
            
            let joinedSecondDigit =   digitsAcc.joined()
            secondDigit =  (joinedSecondDigit as NSString).floatValue
            digitsAcc = []
            
            if(firstDigit != 0){
                if(oper ==  "/"){
                    let prefinal = firstDigit / secondDigit
                    firstDigit = prefinal
                    finalResult = (prefinal as NSNumber).stringValue
                }
                if(oper ==  "*"){
                    let prefinal = firstDigit * secondDigit
                    firstDigit = prefinal
                    finalResult = (prefinal as NSNumber).stringValue
                }
                if(oper ==  "+"){
                    let prefinal = firstDigit + secondDigit
                    firstDigit = prefinal
                    finalResult = (prefinal as NSNumber).stringValue
                }
                if(oper ==  "-"){
                    let prefinal = firstDigit - secondDigit
                    firstDigit = prefinal
                    finalResult = (prefinal as NSNumber).stringValue
                }
            } else {
                finalResult = "0"
            }
            
        case "AC":
            digitsAcc = []
            firstDigit = 0
            finalResult = "0"
         default:
            digitsAcc = []
            finalResult = "0"
        }
    }
}
