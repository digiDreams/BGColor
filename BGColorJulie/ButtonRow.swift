//
//  ButtonRow.swift
//  BGColorJulie
//
//  Created by Apprenant 16 on 23/09/2022.
//

import SwiftUI

struct ButtonRow: View {
    
    @Binding var displayBckColor: Color // = .yellow @Binding
    var buttonBackgroundColor: Color
    var buttonColorName: String
    
    
    var body: some View {
        
        
        ZStack{
            
            displayBckColor
                .ignoresSafeArea()
            Button {
                // change backgroundColor
                // displayBckColor
                displayBckColor = .purple
            } label: {
                HStack {
                    Image(systemName: "eyedropper")
                    Text(buttonColorName)
                        .foregroundColor(.white)
                    
                }
                
            }.buttonStyle(.borderedProminent) // correction .padding() marge en haut en bas et sur les côtés .background(Color.red) .cornerRadius(15)
                .tint(buttonBackgroundColor)
            //            .padding()
        }
    }
}

struct ButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRow(displayBckColor: .constant(.green), buttonBackgroundColor: .yellow, buttonColorName: "Yellow") // .constant(.yellow)
    }
}
