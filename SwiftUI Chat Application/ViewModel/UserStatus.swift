//
//  StatusViewModel.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 04.02.2024.
//

import Foundation
import SwiftUI

class StatusViewModel: ObservableObject {
    @Published var status: UserStatus = .notConfigured
    
    func updateStaus(_ stauts: UserStatus) {
        self.status = stauts
    }
    
}
enum UserStatus: Int, CaseIterable {
    case notConfigured
    case available
    case busy
    case school
    case movies
    case work
    case meeting
    
    
    var title: String {
        switch self {
        case .notConfigured: return "click here to update your status"
        case .available: return "Available"
        case .busy: return "Busy"
        case .school: return "School"
        case .movies: return "Movies"
        case .work : return "Work"
        case .meeting : return "Meeting"
        }
    }
}
