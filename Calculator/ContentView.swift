//
//  ContentView.swift
//  SalesTax-SwiftUI
//
//  Created by Angel Osoria on 2023-02-09.
//

import SwiftUI

struct ContentView: View {
    
    @State var accumulatedValue = "0"
    
    var body: some View {
        
       
        ZStack{
            
            Color.black.ignoresSafeArea(.all)
            HStack{
            
                Button("7"){}
                .frame(width:70, height:70)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                .clipShape(Circle())
        
                
                Button("8"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                    .clipShape(Circle())
                
                Button("9"){}
                    .frame(width:70, height:70)
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                    .clipShape(Circle())
                
                Button("/"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            
            HStack{
                
                Button("4"){}
                .frame(width:70, height:70)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                .clipShape(Circle())
                
                Button("5"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                    .clipShape(Circle())
                
                Button("6"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                    .clipShape(Circle())
                
                Button("X"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }.padding(.top, 150)
            
            HStack{
                Button("1"){}
                .frame(width:70, height:70)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                .clipShape(Circle())
                
                Button("2"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                    .clipShape(Circle())
                
                Button("3"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                    .clipShape(Circle())
                
                Button("-"){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }.padding(.top, 300)
            
            HStack{
                
                Button("AC"){}
                .frame(width:70, height:70)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                .clipShape(Circle())
                
                Button("0"){}
                    .frame(width:150, height:70)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.11, brightness: 0.127))
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
                Button("="){}
                    .frame(width:70, height:70)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .clipShape(Circle())
            }.padding(.top, 450)
           
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
