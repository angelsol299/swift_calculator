//
//  CalculatorButtonStyle.swift
//  Calculator
//
//  Created by Angel Osoria on 2023-02-14.
//

import SwiftUI

struct CalculatorButtonStyle: ButtonStyle {
    
    
    var size: CGFloat = 50
    var backgroundColor: Color
    
    func makeBody(configuration:Configuration) -> some View {
        configuration
            .label.font(.system(size:32, weight:.medium))
            .frame(width:size, height:size)
            .frame(maxWidth: size, alignment: .center)
            .background(backgroundColor)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        
        let abutton = ButtonTypes.digit(0)
        
        Button(abutton.title){}
            .buttonStyle(CalculatorButtonStyle(
                size:100,
                backgroundColor: abutton.backgroundColor ))
            .padding()
    }
}


