//
//  LoginView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/12.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        
        NavigationView {
            ZStack {
                BackgroundGridientView()
                
                VStack {
                    LogoView()
                        .padding(.bottom, 25)
                      
                        
                    VStack(spacing: 20) {
                        EmailTextField(text: $email)
                           
                        PasswordSecureField(text: $password, placehodler: "Password")
                    }
                    .padding(.horizontal, 32)
                    
                
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Forgot Password")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing,28)
                        }
                        //Spacer()
                    }
                    
                    
                    Button {
                        viewModel.login(withEmail: email, password: password)
                    } label: {
                        AuthenticateButtonView(text: "Sign In")
                            .padding()
                    }

                    
                    Spacer()
                    
                    NavigationLink(destination: SignupView()
                        .navigationBarHidden(true),
                        label: {
                            HStack {
                                Text("Don't have an account?")
                                    .font(.system(size: 14))
                                
                                Text("Sign Up")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                        .foregroundColor(.white)
                        }
                    )
                    .padding(.bottom, 16)
                    
                }
                .padding(.top, -44)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
