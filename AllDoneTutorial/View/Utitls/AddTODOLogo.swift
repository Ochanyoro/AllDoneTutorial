//
//  AddTODOLogo.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/14.
//

import SwiftUI

struct AddTODOLogo: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Image("LoginLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .background(colorScheme == .dark ? .clear : .black)
                .cornerRadius(80)
            
            Text("Add your First TODO")
                .foregroundColor(colorScheme == .dark ? .white : .black)
                .font(.system(size: 25, weight: .semibold))
        }
    }
}

struct AddTODOLogo_Previews: PreviewProvider {
    static var previews: some View {
        AddTODOLogo()
    }
}
