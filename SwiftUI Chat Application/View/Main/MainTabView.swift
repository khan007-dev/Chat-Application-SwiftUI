//
//  MainTabView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    var body: some View {
        
        NavigationView {
            
            TabView (selection: $selectedIndex) {
                ChatsView()
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                    .tag(0)
                ChannelView()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                    }.tag(1)
               SettingsView()
                    .tabItem {
                    Image(systemName: "gear")
                }.tag(2)
            }.navigationTitle(tabTitle)
        }
    }
    
    var tabTitle:  String {
        switch  selectedIndex {
        case 0: return "Chats"
        case 1: return "Channel"
        case 2: return "Settings"
        default: return ""
        }
   
    }
}

#Preview {
    MainTabView()
}
