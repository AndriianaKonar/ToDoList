//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    @Published var curentUserID: String = " "
    private var handler: AuthStateDidChangeListenerHandle?
    
    
    init() {
        self.handler  = Auth.auth().addStateDidChangeListener {[weak self] _, user in 
            DispatchQueue.main.async {
                self?.curentUserID = user?.uid ?? " "
            }
        }
    }
    
    
    public var isSignedIn:  Bool {
        return Auth.auth().currentUser != nil
    }
}
