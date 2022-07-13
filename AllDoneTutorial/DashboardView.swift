//
//  DashboardView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/13.
//

import SwiftUI

struct DashboardView: View {
    
    let user: AppUser
    
    @State var serachText: String = ""
    
    @ObservedObject var viewModel = TODOViewModel()
    
    var body: some View {
        
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    
                    Text("- AllDone -")
                        .font(.system(size: 24, weight: .semibold))
                    
                    Spacer()
                }
                .overlay {
                    HStack {
                        Spacer()
                        
                        Button {
                            AuthViewModel.shared.signout()
                        } label: {
                            Text("Logout")
                                .foregroundColor(Color(.systemGray))
                        }
                        .padding(.trailing)
                    }
                }
                
                SearchBarView(serachText: $serachText)
                    .padding()
                
                TODOButtonStack(viewModel:viewModel)
                    .padding(.horizontal)
                    .padding(.bottom)
                
                
                if viewModel.todosFiltered.isEmpty {
                    AddTODOLogo()
                        .padding(.top)
                }
                
            }
            
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
