//
//  GenereButton.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 11/26/23.
//

import Foundation
import SwiftUI

struct GenereButton: View {
    let genere: Generes
    var body: some View {
        VStack (alignment: .center) {
            Button {
                
            } label: {
                ZStack(){
                    Image("ticket")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 80)
                        .clipped()
                        .padding(.leading, 80)
                }
            }
        }
    }
}

struct GenereButtonPreview: PreviewProvider {
    
    static var previews: some View {
        GenereButton(genere: mockGenere)
            .previewLayout(.sizeThatFits)
    }
}
