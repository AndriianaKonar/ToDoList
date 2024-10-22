//
//  User.swift
//  ToDoList
//
//  Created by Andriiana Konar on 03/10/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
