//
//  CalculationView.swift
//  SquareMe
//
//  Created by Alistair Fraser on 2023-02-02.
//

import SwiftUI
struct CalculationView: View {
    //MARK: Stored Properties
    //Keeps the input given by user
    @State var inputGiven = ""
    
    //MARK: Computed Propertie
    //Convert the input givern into an optonal Double
    var inputGivenAsOptionalDouble: Double? {
        //Create optional Double
        guard let inputGivenAsDouble = Double(inputGiven) else {
            //User gave us bad input cannot convert to Double
            return nil
        }
    }
    
    //We have a Double so return it
    return inputGivenAsDouble
    
    }
    var body: some View {
        NavigationView() {
            VStack {
                TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
            }
            .navigationTitle("Square Me")
        }
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
            CalculationView()
    }
}
