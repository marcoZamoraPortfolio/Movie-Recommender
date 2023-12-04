//
//  LoginView.swift
//  SwipeAndLike
//
//  Created by Marco Zamora on 11/12/23.
//

import Foundation
import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Header Title
                VStack {
                    Text("Swipe")
                        .font(.system(size: 50))
                    Text("&")
                        .font(.system(size: 50))
                    Text("Like")
                        .font(.system(size: 50))
                }.padding(.top, 100)
                Spacer()
                // Login Form
                Button {
                    
                } label: {
                    Text("Start")
                        .font(.system(size: 42))
                        .padding(.horizontal, 8)
                        .frame(width: 200, height: 50)
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom, 50)
            }
        }
    }
}


struct StartViewPreviews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
