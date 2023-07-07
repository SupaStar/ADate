//
//  LoginView.swift
//  ADate
//
//  Created by Usuario Alquimia on 05/07/23.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI

struct LoginView: View {
    // MARK: PROPERTY
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isHidePassword: Bool = true
    
    var body: some View {
        
        ZStack{
            Color("Background")
            VStack(spacing:0) {
                // MARK: Header
                ZStack {
                    Image("Background")
                        .resizable()
                        .scaledToFit()
                        .overlay(
                            Image("Logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 160)
                                .offset(y:130)
                                .shadow(color: Color.primary.opacity(0.25), radius: 10)
                        )
                }//: ZSTACK
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                
                // MARK: Center
                VStack(alignment:.center){
                    Text("Iniciar sesión")
                        .font(.system(.title2))
                        .padding(.bottom,20)
                    FloatTextFieldView(placeHolder: "ejemplo@ejemplo.com",
                                       text: $email,
                                       title: "Correo electronico",
                                       errorMsg: nil)
                    .padding(.horizontal,15)
                    
                    ZStack(alignment:.trailing){
                        FloatTextFieldView(placeHolder: "contraseña",
                                           text: $password,
                                           title: "Contraseña",
                                           errorMsg: nil)
                        .padding()
                        
                        Image(systemName: isHidePassword ? "eye.slash.fill":"eye.fill")
                            .font(.system(.caption))
                            .scaledToFill()
                            .foregroundColor(.primary)
                            .padding(.trailing,80)
                            .onTapGesture {
                                isHidePassword.toggle()
                            }
                            .frame(width: 10, height: 10)
                    }//: ZSTACK

                    Button(action:{
                        
                    }){
                        Text("¿Contraseña olvidada?")
                            .font(.system(size: 14))
                            .foregroundColor(Color("SecondaryText"))
                    }
                    .padding(.leading,200)
                    .padding(.bottom,30)
                }//: VSTACK
                .padding(.top, 60.0)
                // MARK: Footer
                VStack(alignment:.center){
                    Button(action: {
                        // Acción del botón
                    }) {
                        ButtonView(text: "Entrar")
                    }
                    HStack{
                        Text("¿Aun no tienes cuenta?")
                            .font(.system(size:16))
                        Button("Registrate",action:{
                            
                        })
                        .font(.system(size:16))
                        .foregroundColor(Color("SecondaryText"))
                    }//: HSTACK
                    .padding(.top,30)
                }//: VSTACK
                VStack{
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image("GoogleG")
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .padding(
                                    .leading, 5
                                )
                                .frame(width:70)
                            Text("Iniciar Sesion")
                                .foregroundColor(.primary)
                                .font(.title3)
                                .frame(width: 240,height: 20)
                                .padding()
                                .padding(.leading,-60)
                            
                        }.overlay(
                            RoundedRectangle(cornerRadius: 20).stroke( Color.primary,lineWidth:1)
                        )
                    }
                    
                }//: VSTACK
                .padding(.top, 10)
            }//: VSTACK
        }//: ZSTACK
        //        .ignoresSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
    }
}
