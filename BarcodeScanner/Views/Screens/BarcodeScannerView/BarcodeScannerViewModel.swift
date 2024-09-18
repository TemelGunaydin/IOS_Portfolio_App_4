//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by temel gunaydin on 18.09.2024.
//

import SwiftUI

@Observable
final class BarcodeScannerViewModel {
    
    var scannedBarcode = ""
    var alertItem : AlertItem?
    
    //here was inside the Text in the view file.
    var statusText : String {
        scannedBarcode.isEmpty ? "Not Scanned Yet" : scannedBarcode
    }
    
    //here was inside the Text in the view file.
    var statusTextColor : Color {
        scannedBarcode.isEmpty ? .green : .red
    }
    
}
