//
//  AppUser.swift
//  AllDoneTutorial
//
//  Created by 大和田一裕 on 2022/07/13.
//

import FirebaseFirestoreSwift

struct AppUser: Identifiable, Decodable {
    
    @DocumentID var id: String?
    let uid: String
    let firstName: String
    let lastName: String
    let email: String
    
    //var isCurrentUser: Bool {
      //  return AuthViewModel.shared.userSession?.uid == id
    //}
}
