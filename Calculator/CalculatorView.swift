//
//  CalculatorView.swift
//  Calculator
//
//  Created by Angel Osoria on 2023-02-14.
//

import SwiftUI




struct CalculatorView: View {
    
    @State var digitsAcc:[String] = []
    @State var firstDigit:String = ""
    @State var secondDigit:String = ""
    @State var firstResult: String = "0"
    
    @State var accOperation:[String] = []
    @State var oper:String = ""
    
    @State var finalResult:String! = "0"

    var buttonTypes: [[ButtonTypes]]{
        [
            [.digit(7), .digit(8), .digit(9), .operation("/")],
            [.digit(4), .digit(5), .digit(6), .operation("x")],
            [.digit(1), .digit(2), .digit(3), .operation("-")],
            [.allClear, .digit(0), .operation("=")]
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
                               case "/","x","-":
                                   if( btn.title == "x"){ oper = "*" }
                                   else{
                                       oper = btn.title
                                   }
                                   firstDigit = digitsAcc.joined()
                                   digitsAcc = []
                                
                               case "=":
                                   secondDigit = digitsAcc.joined()
                                   digitsAcc = []
                                   
                                   if(firstDigit != "0"){
                                       let previewRes = firstDigit + oper + secondDigit
                                       let finalCalc = NSExpression(format:previewRes)
                                       
                                       let more = finalCalc.expressionValue(with: nil, context: nil) as! Int
                                       
                                       finalResult = String(describing: more)
                                   } else {
                                       finalResult = "0"
                                   }
                                   
                              print("first: ", firstDigit, "second: ", secondDigit)
                                   
                               case "AC":
                                   digitsAcc = []
                                   finalResult = "0"
                                default:
                                   print("nada")
                               }
                               
                               
                              print(digitsAcc, oper)
                           }
                               .buttonStyle(CalculatorButtonStyle(isWide: btn.isWide,
                                                                  size: 80,
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