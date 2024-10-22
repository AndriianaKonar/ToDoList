//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var error = ""
    
    init(){
        
    }
    
    func login(){
        guard validate()
        else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    private func validate() -> Bool {
        error = ""
        
        guard !email.trimmingCharacters (in: .whitespaces).isEmpty,
              !password.trimmingCharacters (in: .whitespaces).isEmpty
        else{
            error = "Please fill in all fields"
            return false
            }
        
        guard email.contains("@") && email.contains(".")
        else{
            error = "Please enter a valid email"
            return false
            }
        
        return true
    }
}
