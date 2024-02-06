//
//  Message.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 07.02.2024.
//

import Foundation

struct Message: Identifiable {
    let id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
}
