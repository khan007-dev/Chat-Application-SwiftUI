//
//  NewMessageView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 05.02.2024.
//

import SwiftUI

struct NewMessageView: View {
    
    var body: some View {
      
        ScrollView {
            VStack (alignment: .leading) {
                ForEach ((0...10), id:\.self) { _ in
                UserCell()
                }
            }
        }
    }
}

#Preview {
    NewMessageView()
}
