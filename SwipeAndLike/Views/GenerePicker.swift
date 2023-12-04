//
//  GenerePicker.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 11/26/23.
//

import Foundation
import SwiftUI

struct GenerePicker: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Generes")
                    .padding()
                    .font(.system(size: 40))
            }
            VStack {
                HStack {
                    GenereButton(buttonTitle: "Action", buttonColor: .red) {}
                    GenereButton(buttonTitle: "Comedy", buttonColor: .green) {}
                }
                
                HStack {
                    GenereButton(buttonTitle: "Action", buttonColor: .red) {}
                    GenereButton(buttonTitle: "Comedy", buttonColor: .green) {}
                }
                
                HStack {
                    GenereButton(buttonTitle: "Action", buttonColor: .red) {}
                    GenereButton(buttonTitle: "Comedy", buttonColor: .green) {}
                }
                
                HStack {
                    GenereButton(buttonTitle: "Action", buttonColor: .red) {}
                    GenereButton(buttonTitle: "Comedy", buttonColor: .green) {}
                }
            }
        }
    }
}



struct GenerePickerPreview: PreviewProvider {
    static var previews: some View {
        GenerePicker()
    }
}
