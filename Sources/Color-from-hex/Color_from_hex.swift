//
//  Color_from_hex.swift
//  
//
//  Created by Jeremy Bannister on 4/25/23.
//

///
@_exported import HexadecimalColorCode_module
@_exported import SwiftUI


///
extension Color {
    
    ///
    public init (hexCode: HexadecimalColorCode) {
        
        ///
        self.init(
            .sRGB,
            red: Double(hexCode.red256) / 255,
            green: Double(hexCode.green256) / 255,
            blue: Double(hexCode.blue256) / 255,
            opacity: Double(hexCode.alpha256) / 255
        )
    }
}
