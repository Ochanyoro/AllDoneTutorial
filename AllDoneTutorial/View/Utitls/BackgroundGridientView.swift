//
//  BackgroundGridientView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/12.
//

import SwiftUI

struct BackgroundGridientView: View {
    var body: some View {
       
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct BackgroundGridientView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGridientView()
    }
}
