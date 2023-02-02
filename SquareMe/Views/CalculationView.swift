//
//  CalculationView.swift
//  SquareMe
//
//  Created by Alistair Fraser on 2023-02-02.
//

import SwiftUI
struct CalculationView: View {
    //MARK: Stored Properties
    //Keeps the input gicen by user
    
    //MARK: Computed Propertie
    @State var inputGiven = ""
    var body: some View {
        VStack {
            TextField("5.5", text: $inputGiven)
                .font(.largeTitle)
                .padding()
        }
        .navigationTitle("Square Me")
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalculationView()
        }
    }
}
