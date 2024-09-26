//
//  UserModel.swift
//  SessionSEV
//
//  Created by User on 25.09.2024.
//

import Foundation


struct UserModel: Codable {
    var id: UUID
    var name: String
    var phone: String
    var created_at: Date
}

