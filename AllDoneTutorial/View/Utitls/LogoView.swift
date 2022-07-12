//
//  LogoView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/12.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
       
        VStack {
            
            Image("LoginLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text("AllDone")
                .foregroundColor(Color.white)
                .font(.system(size: 25))
                .fontWeight(.semibold)
        }
        
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGridientView()
            LogoView()
        }
    }
}
