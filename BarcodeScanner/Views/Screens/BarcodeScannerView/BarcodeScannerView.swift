//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by temel gunaydin on 18.09.2024.


import SwiftUI

struct BarcodeScannerView: View {
    @State var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedBarcode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth : .infinity,maxHeight: 300)
                
                Spacer()
                    .frame(height: 100)
           
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title2)
             
                Text(viewModel.statusText)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem, content : { alertItem in
                Alert(title: viewModel.alertItem?.title ?? Text(""), message: viewModel.alertItem?.message, dismissButton: alertItem.dismissButton)
            })
        }
      
    }
}

#Preview {
    BarcodeScannerView()
}
