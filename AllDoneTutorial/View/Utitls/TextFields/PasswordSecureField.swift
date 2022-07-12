//
//  PasswordSecureField.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/12.
//

import SwiftUI

struct PasswordSecureField: View {
    
    @Binding var text: String
    let placehodler: String
    
    var body: some View {
        CustomSecureField(text: $text, placeholder: Text(placehodler))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

struct PasswordSecureField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGridientView()
            PasswordSecureField(text: .constant(""), placehodler: "Password")
        }
    }
}
