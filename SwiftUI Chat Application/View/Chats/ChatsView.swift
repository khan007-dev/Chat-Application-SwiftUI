//
//  ChatsView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 01.02.2024.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack (alignment: .leading, spacing: 12) {
                    ForEach((0...10), id:\.self) { _ in
                    MessageView(isFromCurrentUser: true)
                    }
                    
                }
            }
        }
        .navigationTitle("sarah")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
}

#Preview {
    ChatsView()
}
