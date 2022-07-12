//
//  SignupView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/12.
//

import SwiftUI

struct SignupView: View {
    
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    
    //元の画面に戻れる
    @Environment(\.presentationMode) var mode
    
    
    var body: some View {
        ZStack {
            BackgroundGridientView()
            
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                
                VStack(spacing: 20) {
                    UserTextField(text: $firstName, placehodler: "First Name")
                    UserTextField(text: $lastName, placehodler: "Last Name")
                    EmailTextField(text: $email)
                    PasswordSecureField(text: $password, placehodler: "Password")
                    PasswordSecureField(text: $confirmPassword, placehodler: "Confirm Password")
                    
                    
                }
                .padding(.horizontal, 32)
                
                Button {
                    
                } label: {
                    AuthenticateButtonView(text: "Sign Up")
                        .padding()
                }
                
                Spacer()
                
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                }
                .padding(.bottom, 16)
            }
            .padding(.top, 20)
            
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
