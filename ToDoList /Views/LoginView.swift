//
//  LoginView.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack {
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, backgroundColor: .pink)
                
                
                //Login
                
                Form {
                    if !viewModel.error.isEmpty {
                        Text(viewModel.error)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("User email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password" , text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", backgroundColor: .pink)
                    {
                        viewModel.login()
                    }
            
                }
                .offset(y: -50)
                .background(Color.white)
                
                //Register
                
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegistrateView())
                }
                .padding(.bottom , 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
