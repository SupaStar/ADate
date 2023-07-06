//
//  LoginView.swift
//  ADate
//
//  Created by Usuario Alquimia on 05/07/23.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI
import Firebase

struct LoginView: View {
    // MARK: PROPERTY
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isShowPassword: Bool = false
    var body: some View {

        ZStack{
            VStack(spacing:20) {
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
                                .shadow(color: Color.black.opacity(0.25), radius: 10)
                        )
                }//: ZSTACK
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                
                // MARK: Center
                VStack(alignment:.center){
                    Text("Iniciar sesión")
                        .font(.system(.title2))
                        .padding(.top,20)
                    
                    FloatingLabelTextField($email, placeholder: "ejemplo@ejemplo.com", editingChanged: { (isChanged) in
                               
                           }) {
                               
                           }
                           .padding(.leading,30)
                           .padding(.trailing,30)
                    
                    ZStack(alignment:.trailing){
                        
                        FloatingLabelTextField($password,placeholder: "Contraseña")
                        .isSecureTextEntry(isShowPassword)
                        .padding(.leading,30)
                        .padding(.trailing,30)
                        
                        Image(systemName: isShowPassword ? "eye.fill" : "eye.slash.fill")
                            .font(.system(.caption))
                            .scaledToFill()
                            .foregroundColor(.black)
                            .padding(.trailing,80)
                            .offset(y:10)
                            .onTapGesture {
                                if isShowPassword {
                                    isShowPassword = false
                                } else {
                                    isShowPassword = true
                                }
                            }
                            .frame(width: 10, height: 10)
                    }//: ZSTACK
                        Button(action:{
                            
                        }){
                            Text("¿Contraseña olvidada?")
                                .font(.system(size: 14))
                                .foregroundColor(Color("SecondaryText"))
                        }.padding(.leading,180)
                }//: VSTACK
                .padding(.top, 60.0)
                // MARK: Footer
                VStack(alignment:.center){
                    Button(action: {
                        // Acción del botón
                    }) {
                        Text("Entrar")
                            .foregroundColor(.black)
                            .font(.title3)
                            .frame(width: 240, height: 30)
                            .padding()
                            .background(Color("Primary"))
                            .cornerRadius(4)
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
//                            Image("GoogleG")
//                                .resizable()
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
                                    .foregroundColor(.black)
                                    .font(.title3)
                                    .frame(width: 240,height: 20)
                                    .padding()
                                    .padding(.leading,-60)
                                    
                            }.overlay(
                                RoundedRectangle(cornerRadius: 20).stroke( Color.black,lineWidth:1)
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
    }
}
