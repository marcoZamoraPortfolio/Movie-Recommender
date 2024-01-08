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
        VStack {
            Text("Generes")
                .padding()
                .font(.system(size: 40))
            
            List(Generes.allCases) { genere in
                GenereButton(genere: genere)
            }

        }
    }
}

 
struct GenerePickerPreview: PreviewProvider {
    static var previews: some View {
        GenerePicker()
    }
}
