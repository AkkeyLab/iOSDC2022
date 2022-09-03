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
        if let particle = scene?.rootNode.childNode(withName: "particles", recursively: true)?.particleSystems?.first {
            particle.particleImage = Assets.maple.image
            particle.particleColor = .white
            particle.particleColorVariation = SCNVector4Zero
        }
    }

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SceneView(scene: scene, pointOfView: camera, options: [])
                .background(Color.clear)
                .edgesIgnoringSafeArea(.all)
        }
    }

    private let scene = SCNScene(named: "Scene.scn")
    private var camera: SCNNode? {
        scene?.rootNode.childNode(withName: "camera", recursively: false)
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
