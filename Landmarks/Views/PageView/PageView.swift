//
//  PageView.swift
//  Landmarks
//
//  Created by Vu Hong Duong on 2023/10/28.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0

    var body: some View {
        PageViewController(pages: pages, currentPage: $currentPage)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
        .aspectRatio(3 / 2, contentMode: .fit)
}
