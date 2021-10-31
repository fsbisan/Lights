//
//  CircleView.swift
//  Lights
//
//  Created by Александр Макаров on 27.10.2021.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 110, height: 110)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .opacity(opacity)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1)
    }
}
