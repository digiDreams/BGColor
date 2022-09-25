//
//  ButtonsView.swift
//  BGColorJulie
//
//  Created by Apprenant 16 on 23/09/2022.
//

import SwiftUI

struct ButtonsView: View {
    @State private var colorDisp: displayBckColor 
    var body: some View {
        ZStack {
            colorDisp
                .ignoresSafeArea()
            HStack {
                ButtonRow(displayBckColor: .red, buttonBackgroundColor: .red, buttonColorName: "Red")
                ButtonRow(displayBckColor: .green, buttonBackgroundColor: .green, buttonColorName: "Green")
                ButtonRow(displayBckColor: .blue, buttonBackgroundColor: .blue, buttonColorName: "Blue")
            }
        }
        
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(colorDisp: .purple)
    }
}
