//
//  ContextView.swift
//  SwiftUI Basics
//
//  Created by Harsha Agarwal on 25/10/23.
//

import SwiftUI

struct ContextView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).scaledToFill()
            Text("Creating a simple view using swiftUI").scaledToFill()
        }
    }
}

#Preview {
    ContextView()
}
