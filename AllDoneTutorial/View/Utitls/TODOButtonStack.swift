//
//  TODOButtonStack.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/13.
//

import SwiftUI

struct TODOButtonStack: View {
    
    @ObservedObject var viewModel: TODOViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                TODOButton(buttonType: .all, viewModel: viewModel)
                TODOButton(buttonType: .groceries, viewModel: viewModel)
                TODOButton(buttonType: .work, viewModel: viewModel)
                TODOButton(buttonType: .school, viewModel: viewModel)
                TODOButton(buttonType: .home, viewModel: viewModel)
                TODOButton(buttonType: .personal, viewModel: viewModel)
                TODOButton(buttonType: .extra, viewModel: viewModel)
            }
        }
    }
}

struct TODOButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        TODOButtonStack(viewModel: TODOViewModel())
    }
}

struct TODOButton: View {
    
    let buttonType: SelectedButton
    @ObservedObject var viewModel: TODOViewModel
    
    var body: some View {
        Button {
            viewModel.filterTODOSelected = buttonType
            
            // 前のデータを使う
            if viewModel.filterTODOSelected != .all {
                viewModel.todosFiltered = viewModel.todos.filter { todo in
                    return todo.TODOType == viewModel.filterTODOSelected.rawValue
                }
            } else {
                viewModel.todosFiltered = viewModel.todos
            }
                
        } label: {
            Text("\(buttonType.getValue())")
                .foregroundColor(viewModel.filterTODOSelected == buttonType ? Color.white : Color(.systemGray))
                .frame(width: 100, height: 40)
                .background(buttonType == viewModel.filterTODOSelected ? Color("lightBlue") : Color(.systemGray6))
                .cornerRadius(20)
        }

    }
}
