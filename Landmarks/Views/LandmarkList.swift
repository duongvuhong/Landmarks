//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Vu Hong Duong on 2023/10/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) {
            LandmarkRow(landmark: $0)
        }
    }
}

#Preview {
    LandmarkList()
}
