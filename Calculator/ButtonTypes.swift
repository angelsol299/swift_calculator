//
//  ButtonTypes.swift
//  Calculator
//
//  Created by Angel Osoria on 2023-02-14.
//

import Foundation
import SwiftUI

enum ButtonTypes:Hashable {
    
    case digit(_ number: Int)
    case operation(_ operation: String)
    case allClear
    

    
    var backgroundColor: Color {
        switch self {
        case .digit:
            return .secondary
        default:
            return .orange
        }
    }
    
    var title: String {
        switch self {
        case .digit(let number):
            return "\(number)"
        case .operation(let operation):
            return operation
        case .allClear:
            return "AC"
        }
    }
    
   
    
    var isWide:Bool {
        return self == .digit(0)
    }
}



/*
 Varibale == properties
 1.- Computed properties: functions that returns something that uses the already stored property
 2.- Stored properties : occupies some space on memory example class
 */


