//
//  SwiftUI_Chat_ApplicationApp.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 29.01.2024.
//

import SwiftUI
import Firebase
@main
struct SwiftUI_Chat_ApplicationApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
        LoginView()
        }
    }
}
