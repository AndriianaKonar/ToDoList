//
//  Untitled.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                                   
                Text(title)
                    .bold()
                    .foregroundColor(Color.white)
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Title", backgroundColor: .pink) {
        //any acction 
    }
}
