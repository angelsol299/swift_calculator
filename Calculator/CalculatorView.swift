//
//  CalculatorView.swift
//  Calculator
//
//  Created by Angel Osoria on 2023-02-14.
//

import SwiftUI




struct CalculatorView: View {
    
    @State var digitsAcc:[String] = []
    @State var firstDigit:Float = 0
    @State var secondDigit:Float = 0
    @State var firstResult: Float = 0
    

    @State var oper:String = ""
    
    @State var finalResult:String! = "0"

    var buttonTypes: [[ButtonTypes]]{
        [
            [.digit(7), .digit(8), .digit(9), .operation("/")],
            [.digit(4), .digit(5), .digit(6), .operation("x")],
            [.digit(1), .digit(2), .digit(3), .operation("-")],
            [.allClear, .digit(0),.operation("+"), .operation("=")]
        ]
    }
    
      
    
    private var buttonPad: some View {
        
           VStack(spacing: Constants.padding) {
               ForEach(buttonTypes, id: \.self) { row in
                   HStack(spacing: Constants.padding) {
                       ForEach(row, id: \.self) { btn in
                           Button(btn.title){
                               
                               switch btn.title{
                               case "1", "2", "3","4", "5", "6", "7", "8", "9", "0":
                                   digitsAcc.append(btn.title)
                                   finalResult = (digitsAcc.joined())
                               case "/","x","-","+":
                                   if( btn.title == "x"){ oper = "*" }
                                   else{
                                       oper = btn.title
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
                               .buttonStyle(CalculatorButtonStyle(size: 80,
                                                                  backgroundColor: btn.backgroundColor))
                       }
                   }
               }
           }
       }
    

    
    private var displayText: some View {
        Text(finalResult)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size:88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    var body: some View {
        VStack{
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
        .background(.black)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
