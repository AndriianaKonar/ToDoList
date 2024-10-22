//
//  ContentView.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn , !viewModel.curentUserID.isEmpty {
            TabView {
                ToDoListView(userID: viewModel.curentUserID)
                    .tabItem() {
                        Label("Home" , systemImage: "house")
                    }
                ProfileView()
                    .tabItem() {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
