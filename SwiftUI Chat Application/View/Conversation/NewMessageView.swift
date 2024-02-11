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
    @ObservedObject var viewMode = NewMessageViewModel()
    var body: some View {
      
        ScrollView {
            SearchBar(text: $searchText, isEditing: $isEditing)
                .onTapGesture {
                    isEditing.toggle()
                }
                .padding()
            VStack (alignment: .leading) {
                ForEach (viewMode.users)  { user in
                    Button {
                        showChatView.toggle()
                        mode.wrappedValue.dismiss()
                    } label: {
                        UserCell(user: user)
                    }

                }
            }
        }
    }
}

#Preview {
    NewMessageView(showChatView: .constant(true))
}
