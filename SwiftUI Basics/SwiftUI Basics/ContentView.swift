//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Harsha Agarwal on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var size: CGSize = .zero
    var body: some View {
        HStack {
            AnimationImageView().frame(height: size.height).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -8))
            ContextView().padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8)).overlay(Color.clear.modifier(SizeCal(size: $size)))
            RedirectionButton().padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16)).background(Color.yellow)
            Spacer()
        }
        .background(.yellow)
    }
}

#Preview {
    ContentView()
}

struct SizeCal: ViewModifier {

    @Binding var size: CGSize

    func body(content: Content) -> some View {
        content.background(
            GeometryReader(content: { geometry in
                Color.clear.onAppear(perform: {
                    size = geometry.size
                })
            })
        )
    }

}

extension View {
    func saveInSize(in size: Binding<CGSize>) -> some View {
        modifier(SizeCal(size: size))
    }
}
