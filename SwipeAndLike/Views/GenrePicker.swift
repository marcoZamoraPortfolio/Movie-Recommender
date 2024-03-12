//
//  GenerePicker.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 11/26/23.
//

import Foundation
import SwiftUI

struct GenrePicker: View {
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ScrollView {
            
            Text("Generes")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,24)
                .padding(.top,24)
            
            LazyVGrid(columns: adaptiveColumn, spacing: 20, content: {
                ForEach(Genres.allCases, id: \.self) { genere in
                    ZStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 120)
                            .foregroundStyle(.green)
                        Text(genere.rawValue)
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                }
            })
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
    }
}

 
struct GenerePickerPreview: PreviewProvider {
    static var previews: some View {
        GenrePicker()
    }
}
