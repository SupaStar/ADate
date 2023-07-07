//
//  ButtonView.swift
//  ADate
//
//  Created by Usuario Alquimia on 06/07/23.
//

import SwiftUI

struct ButtonView: View {
    @State var text : String
    
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .font(.title3)
            .frame(width: 240, height: 30)
            .padding()
            .background(Color("Primary"))
            .cornerRadius(4)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Enviar")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
