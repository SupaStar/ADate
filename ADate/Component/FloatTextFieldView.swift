//
//  TextFieldView.swift
//  ADate
//
//  Created by Usuario Alquimia on 06/07/23.
//

import SwiftUI

struct FloatTextFieldView: View {
    
    // MARK: PROPERTY
    let textFieldHeight: CGFloat = 50
    private let placeHolderText: String
    @State var isRequeried: Bool = true
    @State var isValid: Bool = true
    @Binding var text: String
    @State private var isEditing = false
    private let title: String
    private let errorMsg: String
    
    // MARK: EVENTS
    
    public init(placeHolder: String,
                text: Binding<String>,
                title: String,
                errorMsg: String?
    ) {
        self._text = text
        self.placeHolderText = placeHolder
        self.title = title
        if let errorMsg {
            self.errorMsg = errorMsg
        }else {
            self.errorMsg = "Este campo es requerido."
        }
    }
    
    var shouldPlaceHolderMove: Bool {
        isEditing || (text.count != 0)
    }
    
    var validColor : Color {
        isValid ? Color.secondary : Color.red
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text, onEditingChanged: { (edit) in
                isEditing = edit
            },onCommit: {
                if isRequeried{
                    if text.count <= 0{
                        isValid = false
                    } else {
                        isValid = true
                    }
                }
            })
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(validColor)
                .frame(height: textFieldHeight))
            .foregroundColor(Color.primary)
            .accentColor(Color.secondary)
            .animation(.linear)
            
            
            ///Floating Placeholder
            Text(placeHolderText)
                .font(.system(.caption))
                .foregroundColor(validColor)
                .background(Color(UIColor.systemBackground))
                .padding(.leading,4)
                .padding(shouldPlaceHolderMove ?
                         EdgeInsets(top: 0, leading:15, bottom: textFieldHeight, trailing: 0) :
                            EdgeInsets(top: 0, leading:15, bottom: 0, trailing: 0))
                .scaleEffect(shouldPlaceHolderMove ? 1.0 : 1.2)
                .opacity(shouldPlaceHolderMove ? 0 : 1)
                .animation(.linear)
            
            Text(title)
                .font(.system(.caption))
                .foregroundColor(
                    validColor
                )
                .background(
                    Color(
                        UIColor.systemBackground
                    )
                )
                .padding(.leading, 4)
                .padding(
                    EdgeInsets(
                        top: 0,
                        leading: 5,
                        bottom: 50,
                        trailing: 0
                    )
                )
            Text(errorMsg)
                .font(.system(.caption))
                .foregroundColor(Color.red)
                .padding(.leading, 4)
                .padding(
                    EdgeInsets(
                        top: 70,
                        leading: 5,
                        bottom: 0,
                        trailing: 0
                    )
                )
                .opacity(isValid ? 0 : 1)
        }
    }
    
}

struct demo: View {
    @State var name: String = ""
    var body: some View {
        VStack {
            FloatTextFieldView(placeHolder: "ejemplo@ejemplo.com", text: $name, title: "Prueba", errorMsg: nil)
        }.padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    
    static var previews: some View {
        demo()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
