//
//  ContentView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 29.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var  viewmodel  : AuthViewModel
    var body: some View {
        Group {
            if viewmodel.userSession != nil{
                MainTabView()
            }
            else  {
                LoginView()
            }
                
        }
    }
}

#Preview {
    ContentView()
}
