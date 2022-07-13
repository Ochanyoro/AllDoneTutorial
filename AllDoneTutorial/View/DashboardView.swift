//
//  DashboardView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/13.
//

import SwiftUI

struct DashboardView: View {
    
    let user: AppUser
    
    @State var searchText: String = ""
    
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
                
                SearchBarView(serachText: $searchText)
                    .padding()
                
                TODOButtonStack(viewModel:viewModel)
                    .padding(.horizontal)
                    .padding(.bottom)
                
                
                if viewModel.todosFiltered.isEmpty {
                    AddTODOLogo()
                        .padding(.top)
                }
                
                
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(viewModel.todosFiltered, id:\.id) { todo in
                            if searchText == "" {
                                TODOView(todo: TODO(ownerUid: todo.ownerUid, title: todo.title, description: todo.description, TODOType: todo.TODOType, completed: todo.completed, documentID: todo.documentID), viewModel: viewModel)
                            } else {
                                if todo.title.lowercased().contains(searchText.lowercased()) || todo.description.lowercased().contains(searchText.lowercased()) {
                                    TODOView(todo: TODO(ownerUid: todo.ownerUid, title: todo.title, description: todo.description, TODOType: todo.TODOType, completed: todo.completed, documentID: todo.documentID), viewModel: viewModel)
                                }
                            }
                        }
                    }
                }
                
            }
            .overlay(
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            viewModel.showCreateTODOView = true
                        } label: {
                            Image(systemName: "plus")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .frame(width: 60, height: 60)
                                .background(Color("lightBlue"))
                                .cornerRadius(30)
                        }
                        .padding(20)

                    }
                }
            )
            
            if viewModel.showCreateTODOView {
                BlankView()
                CreateTODOView(user: user, viewModel: viewModel)
            }
            
            
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
