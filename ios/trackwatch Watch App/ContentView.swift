//
//  ContentView.swift
//  trackwatch Watch App
//
//  Created by mikasaloli on 24/09/2023.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: viewModel.cryptoImageUrl)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50) // Set the desired size here
                        .clipShape(Circle()) // You can add this clip shape as well
                } else if phase.error != nil {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                } else {
                    ProgressView()
                }
            }
            
            Text(viewModel.cryptoName)
                .font(.title) // Set the font size and style
                .fontWeight(.bold)
            Text(viewModel.cryptoChange).foregroundColor(.green)
            Text(viewModel.cryptoPrice).foregroundColor(.green)
        }
        .padding()
    }
}


@available(iOS 15.0, *)
#Preview {
    ContentView()
}
