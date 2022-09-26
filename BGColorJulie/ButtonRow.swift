//
//  ButtonRow.swift
//  BGColorJulie
//
//  Created by Apprenant 16 on 23/09/2022.
//

import SwiftUI

struct ButtonRow: View {
    
    @Binding var displayBckColor: Color // = Color.orange // = .yellow @Binding
    var newBckColor: Color //  @Binding
    var buttonBackgroundColor: Color
    var buttonColorName: String
    
    
    var body: some View {
        
        
        ZStack{
            
            displayBckColor
                .ignoresSafeArea()
            Button {
                displayBckColor = newBckColor // = self.displayBckColor //.purple
            } label: {
                HStack {
                    Image(systemName: "eyedropper")
                    Text(buttonColorName)
                }
                
            }
            .padding()
            .background(buttonBackgroundColor)
            .foregroundColor(.white)
            .cornerRadius(15)
        }
    }
}

struct ButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRow(displayBckColor: .constant(.pink), newBckColor: .blue, buttonBackgroundColor: .yellow, buttonColorName: "Where is the food")
    }
}
