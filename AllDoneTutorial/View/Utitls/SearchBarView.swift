//
//  SearchBarView.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/13.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var serachText: String
    @State var isSearching = false
    
    var body: some View {
        
        HStack {
            TextField("Search TODO", text: $serachText)
                .searchTextFieldStyle()
                .onTapGesture(perform: {
                    isSearching = true
                })
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("lightBlue"))
                        Spacer()
                        
                        if isSearching {
                            Button {
                                serachText = ""
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                            }
                        }
                    }
                        .padding(.horizontal,8)
                        .foregroundColor(.gray)
                )
                .transition(.move(edge: .trailing))
            
            if isSearching {
                Button(action: {
                    isSearching = false
                    serachText = ""
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from: nil, for: nil)
                    
                }, label: {
                    Text("Cancel")
                        .foregroundColor(Color("lightBlue"))
                        .padding(.trailing)
                        .padding(.leading, 0)
                })
                .transition(.move(edge: .trailing))
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGridientView()
            SearchBarView(serachText: .constant(""))
        }
    }
}


struct SearchTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .padding(.leading, 24)
            .padding(.horizontal)
            .frame(height: 45)
            .background(Color(.systemGray6))
            .cornerRadius(15)
    }
}

extension View {
    func searchTextFieldStyle() -> some View {
        modifier(SearchTextFieldModifier())
    }
}
