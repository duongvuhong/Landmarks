//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by Vu Hong Duong on 2023/10/28.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            VStack {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()

                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)

                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }

                Divider()

                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)

                Text(landmark.state)
                    .font(.caption)

                Divider()

                MapView(coordinate: landmark.locationCoordinate)
                    .scaledToFit()
            }
            .padding(16)
        }
        .navigationTitle("Landmarks")
    }
}

#Preview("Large watch") {
    let modelData = ModelData()

    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environmentObject(modelData)
        .previewDevice("Apple Watch Series 5 - 44mm")
}

#Preview("Small watch") {
    let modelData = ModelData()

    return LandmarkDetail(landmark: modelData.landmarks[1])
        .environmentObject(modelData)
        .previewDevice("Apple Watch Series 5 - 40mm")
}
