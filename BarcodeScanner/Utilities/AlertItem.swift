//
//  AlertItem.swift
//  BarcodeScanner
//
//  Created by temel gunaydin on 18.09.2024.
//

import SwiftUI

struct AlertItem : Identifiable {
    var id = UUID()
    var title : Text
    var message : Text
    var dismissButton : Alert.Button
    
    var alert : Alert {
        Alert(title: title,message: message,dismissButton: dismissButton)
    }
    
}

enum AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Device Error"), message: Text("Unable to use the device. Please try again later"), dismissButton: .default(Text("Ok")))
    
    static let invalidScannedValue = AlertItem(title: Text("Input Error"), message: Text("Scanned barcode is invalid. Please try ean8 or ean12 type barcode."), dismissButton: .default(Text("Ok")))
}
