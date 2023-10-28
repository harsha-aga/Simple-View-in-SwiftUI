//
//  AnimationImageView.swift
//  SwiftUI Basics
//
//  Created by Harsha Agarwal on 25/10/23.
//

import SwiftUI

struct AnimationImageView: View {
    var body: some View {
        ZStack {
            Image("back")
                .resizable()
                .frame(width: 76)
                .scaledToFit()
            Image(systemName: "star")
                .resizable()
                .scaledToFit().frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    AnimationImageView()
}
