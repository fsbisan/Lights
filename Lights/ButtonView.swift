//
//  ButtonView.swift
//  Lights
//
//  Created by Александр Макаров on 28.10.2021.
//

import SwiftUI

struct ButtonView: View {
    
    let buttonTitle: String
    var action: () -> Void
    
    var body: some View {
            Button(action: {}) {
                Text(buttonTitle)
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
            .background(Color(.blue))
            .cornerRadius(4)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "Start", action: {})
    }
}
