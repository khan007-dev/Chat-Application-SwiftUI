//
//  NewMessageView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 05.02.2024.
//

import SwiftUI

struct NewMessageView: View {
    @Binding var showChatView: Bool
    @Environment(\.presentationMode) var mode
    @State private var searchText = ""
    @State private var isEditing = false
    var body: some View {
      
        ScrollView {
            SearchBar(text: $searchText, isEditing: $isEditing)
                .onTapGesture {
                    isEditing.toggle()
                }
                .padding()
            VStack (alignment: .leading) {
                ForEach ((0...10), id:\.self) { _ in
                    Button {
                        showChatView.toggle()
                        mode.wrappedValue.dismiss()
                    } label: {
                        UserCell()
                    }

                }
            }
        }
    }
}

#Preview {
    NewMessageView(showChatView: .constant(true))
}
