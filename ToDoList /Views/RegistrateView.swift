//
//  RegistrateView.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import SwiftUI

struct RegistrateView: View {

    @StateObject var viewModel = RegistrateViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       backgroundColor: .orange)
            
            Form {
                TextField("Full name" , text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email address" , text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password" , text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account", backgroundColor: .orange)
                {
                    viewModel.register()
                }
                
                
            }
            .offset(y: -50)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegistrateView()
}
