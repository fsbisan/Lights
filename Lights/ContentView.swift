//
//  ContentView.swift
//  Lights
//
//  Created by Александр Макаров on 27.10.2021.
//

import SwiftUI

enum CurrenLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State var currentLight = CurrenLight.red
    
    @State private var buttonTitle = "START"
    
    @State private var redLightIsOn = false
    @State private var greenLightIsOn = false
    @State private var yellowLightIsOn = false
    
    private func lightSwitcher() {
        
        switch currentLight {
            
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 30.0) {
                CircleView(color: .red, opacity: (currentLight == .red ? 1.0 : 0.5))
                CircleView(color: .yellow, opacity: (currentLight == .yellow ? 1.0 : 0.5))
                CircleView(color: .green, opacity: (currentLight == .green ? 1.0 : 0.5))
                
                Spacer()
                
                ButtonView(buttonTitle: buttonTitle, action: {lightSwitcher()})
                padding(.bottom, 16)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(currentLight: CurrenLight.red)
    }
}
