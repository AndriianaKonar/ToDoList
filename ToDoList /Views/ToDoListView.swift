//
//  ToDoView.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userID: String
    
    init (userID: String){
        self.userID = userID
    }
    
    
    var body: some View {
        NavigationView{
            VStack {
                
            }
            .navigationTitle("To Do List ")
            .toolbar{
                Button{
                    //action
                } label:{
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userID: " ")
}
