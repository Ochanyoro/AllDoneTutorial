//
//  SelectedButton.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/13.
//

import Foundation

enum SelectedButton: String {
    
    case all = "all"
    case groceries = "Groceries"
    case work = "Work"
    case school = "School"
    case home = "Home"
    case personal = "Personal"
    case extra = "Extra"
    
    func getValue() -> String {
        return self.rawValue
    }
}
