//
//  GenereButton.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 11/26/23.
//

import Foundation
import SwiftUI

struct GenereButton: View {
    var buttonTitle: String
    var buttonColor: Color
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(buttonColor)
                Text(buttonTitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding(.all, 20)
    }
}


struct GenereButtonPreview: PreviewProvider {
    static var previews: some View {
        GenereButton(buttonTitle: "Action", buttonColor: .red) {
            
        }
    }
}
