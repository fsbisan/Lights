//
//  ContentView.swift
//  Lights
//
//  Created by Александр Макаров on 27.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLightIsOn = false
    @State private var greenLightIsOn = false
    @State private var yellowLightIsOn = false

    private func lightSwitcher() {
        if !redLightIsOn, !greenLightIsOn, !yellowLightIsOn {
            redLightIsOn.toggle()
            redOpacity = 1
        } else if redLightIsOn {
            redLightIsOn.toggle()
            yellowLightIsOn.toggle()
            redOpacity = 0.5
            yellowOpacity = 1
        } else if yellowLightIsOn {
            yellowLightIsOn.toggle()
            greenLightIsOn.toggle()
            yellowOpacity = 0.5
            greenOpacity = 1
        } else if greenLightIsOn {
            redLightIsOn.toggle()
            greenLightIsOn.toggle()
            greenOpacity = 0.5
            redOpacity = 1
        }
    }
    
    private var button: some View {
        Button(action: {lightSwitcher()}) {
            Text("START")
                .font(.title)
                .foregroundColor(.blue)
        }
        .padding(.bottom, 16.0)
        .buttonStyle(.bordered)
    }
    
    @State private var redOpacity = 0.5
    @State private var greenOpacity = 0.5
    @State private var yellowOpacity = 0.5
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 30.0) {
                CircleView()
                    .foregroundColor(.red)
                    .opacity(redOpacity)
                CircleView()
                    .foregroundColor(.yellow)
                    .opacity(yellowOpacity)
                CircleView()
                    .foregroundColor(.green)
                    .opacity(greenOpacity)
                Spacer()
                button
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
