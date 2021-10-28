//
//  CircleView.swift
//  Lights
//
//  Created by Александр Макаров on 27.10.2021.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 110, height: 110)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
