//
//  User.swift
//  InstaClone
//
//  Created by Awesomepia on 2/26/24.
//

import Foundation

final class User {
    static let shared = User()
    
    var id: String = ""
    var name: String = ""
    var accessToken: String = ""
    var refreshToken: String = ""
}
