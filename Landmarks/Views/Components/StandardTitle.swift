//
//  StandardTitle.swift
//  Landmarks
//
//  Created by Duong Hong Vu on 8/17/24.
//

import SwiftUI

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}
