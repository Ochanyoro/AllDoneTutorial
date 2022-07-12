//
//  UserTextField.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/12.
//

import SwiftUI

struct UserTextField: View {
    
    @Binding var text: String
    let placehodler: String
    
    
    var body: some View {
        CustomTextField(text: $text, placeholder: Text(placehodler), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

struct UserTextField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGridientView()
            UserTextField(text: .constant(""), placehodler: "User")
        }
    }
}
