//
//  Particle.swift
//  Particle Effects
//
//  Created by Justin on 4/23/23.
//

import SwiftUI


//Particle Model

struct Particle: Identifiable {
    var id: UUID = .init()
    var randomX: CGFloat = 0
    var randomY: CGFloat = 0
    var scale: CGFloat = 1
}
