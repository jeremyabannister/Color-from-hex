//
//  Color_from_hex.swift
//  
//
//  Created by Jeremy Bannister on 4/25/23.
//

///
@_exported import StandardHexadecimalColorCode_module
@_exported import SwiftUI


///
extension Color {
    
    ///
    public init (hexCode: StandardHexadecimalColorCode) {
        
        ///
        self.init(
            .sRGB,
            red: Double(hexCode.red) / 255,
            green: Double(hexCode.green) / 255,
            blue: Double(hexCode.blue) / 255,
            opacity: Double(hexCode.alpha) / 255
        )
    }
}
