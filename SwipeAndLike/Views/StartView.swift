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
                ZStack {
                    Capsule()
                        .fill(.bar)
                        .frame(width: 250, height: 250)
                        .padding(.top, 20)
                    
                    // Header Title
                    VStack {
                        Text("Swipe")
                            .font(.system(size: 50))
                            .foregroundColor(.red)
                        Text("&")
                            .font(.system(size: 50))
                            .foregroundStyle(.black)
                        Text("Like")
                            .font(.system(size: 50))
                            .foregroundStyle(.green)
                    }
                    .padding(.top, 100)
                    .padding(.bottom, 75)
                }
                
                // Link to all generes
                NavigationLink {
                    GenrePicker()
                } label: {
                    Text("Start")
                        .font(.system(size: 42))
                        .padding(.leading, 8)
                        .padding(.trailing, 8)
                        .frame(height: 50)
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .padding(.bottom, 105)
                .padding(.leading, 8)
                .padding(.trailing, 8)
                .frame(width: .infinity)
            }
        }
    }
}


struct StartViewPreviews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
