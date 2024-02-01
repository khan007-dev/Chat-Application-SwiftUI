//
//  SettingsCellViewModel.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import Foundation
import SwiftUI

enum SettingsCellViewModel: Int, CaseIterable {
    
    case account
    case notification
    case starredMessage
    
    
    var title: String {
        switch self {
        case .account: return "Account"
        case .notification: return "Notification"
        case .starredMessage: return "Starred Messages"
        }
    }
    
    
    var imageName: String {
        switch self {
        case .account: return "key.fill"
        case .notification: return "bell.badge.fill"
        case .starredMessage: return "star.fill"
        }
    }
    
    
    var backgroundColor: Color {
        switch self {
        case .account: return .blue
        case .notification: return .red
        case .starredMessage: return .yellow
        }
    }
}
