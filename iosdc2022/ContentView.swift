//
//  ContentView.swift
//  iosdc2022
//
//  Created by AkkeyLab on 2022/09/03.
//

import SceneKit
import SwiftUI

struct ContentView: View {
    init() {
        scene?.rootNode
            .childNode(withName: .particles, recursively: false)?
            .particleSystems?
            .first?
            .particleImage = Assets.maple.image
    }

    var body: some View {
        SceneView(scene: scene)
            .edgesIgnoringSafeArea(.all)
    }

    private let scene = SCNScene(named: .scene)
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
