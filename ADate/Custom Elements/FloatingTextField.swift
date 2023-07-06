//
//  FloatingTextField.swift
//  ADate
//
//  Created by Usuario Alquimia on 05/07/23.
//

import SwiftUI

struct FloatingTextField: View {
    @Binding var text: String
    var placeholder: String
    var title: String
    
    var body: some View {
        VStack {
            
            Text(title)
                .foregroundColor(.gray)
                .padding(.leading, 10)
                .padding(.bottom, -10)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField(placeholder, text: $text)
                .padding(10)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(5)
                .textContentType(.none)
                .disableAutocorrection(true)
        }
        .padding(.horizontal)
    }
}

