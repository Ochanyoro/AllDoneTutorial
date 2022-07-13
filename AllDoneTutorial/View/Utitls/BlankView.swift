//
//  BlankView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/14.
//

import SwiftUI

struct BlankView: View {
    var body: some View {
        VStack {
            Spacer()
            
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            
        }
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
