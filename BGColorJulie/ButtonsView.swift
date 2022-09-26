//
//  ButtonsView.swift
//  BGColorJulie
//
//  Created by Apprenant 16 on 23/09/2022.
//

import SwiftUI

struct ButtonsView: View {
    @State private var colorDisp: Color = Color.white
    var body: some View {
        ZStack {
            colorDisp
                .ignoresSafeArea()
            HStack {
                
                
                ButtonRow(displayBckColor: $colorDisp, newBckColor: .red, buttonBackgroundColor: .red, buttonColorName: "Red")
                ButtonRow(displayBckColor: $colorDisp, newBckColor: .green, buttonBackgroundColor: .green, buttonColorName: "Green")
                ButtonRow(displayBckColor: $colorDisp, newBckColor: .blue, buttonBackgroundColor: .blue, buttonColorName: "Blue")
            }
        }
        
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
