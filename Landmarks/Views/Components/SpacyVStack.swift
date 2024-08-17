//
//  SpacyVStack.swift
//  Landmarks
//
//  Created by Duong Hong Vu on 8/17/24.
//

import SwiftUI

struct SpacyVStack<Content: View>: View {
    let content: () -> Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    var body: some View {
        VStack(spacing: 10) {
            content()
        }
        .font(.largeTitle)
    }
}

#Preview {
    SpacyVStack {
        Text("A Spacy VStack")
        Text("This is a View Builder")
    }
}
