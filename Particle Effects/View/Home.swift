//
//  Home.swift
//  Particle Effects
//
//  Created by Justin on 4/23/23.
//

import SwiftUI

struct Home: View {
    //View Properties
    
    @State private var isLiked: [Bool] = [false, false, false]
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                CustomButton(systemImage: "suit.heart.fill", status: isLiked[0], activeTint: .pink, inactiveTint: .white) {
                    isLiked[0].toggle()
                }
                
                CustomButton(systemImage: "star.fill", status: isLiked[1], activeTint: .yellow, inactiveTint: .white) {
                    isLiked[1].toggle()
                }
                
                CustomButton(systemImage: "square.and.arrow.up.fill", status: isLiked[2], activeTint: .teal, inactiveTint: .white) {
                    isLiked[2].toggle()
                }
            }
        }
    }
    
    //Custom Button View
    @ViewBuilder
    func CustomButton(systemImage: String, status: Bool, activeTint: Color, inactiveTint: Color, onTap: @escaping () -> ()) -> some View {
        Button(action: onTap) {
            Image(systemName: systemImage)
                .font(.title2)
                .particleEffect(systemImage: systemImage,
                                font: .title2,
                                status: status,
                                activeTint: activeTint,
                                inactiveTint: inactiveTint)
                .foregroundColor(status ? activeTint : inactiveTint)
                .padding(.horizontal, 18)
                .padding(.vertical, 8)
                .background {
                    Capsule()
                        .fill(status ? activeTint.opacity(0.25) : Color("ButtonColor"))
                }
        }
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home_Previews2: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
