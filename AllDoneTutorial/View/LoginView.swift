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
    
    var body: some View {
        
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
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
