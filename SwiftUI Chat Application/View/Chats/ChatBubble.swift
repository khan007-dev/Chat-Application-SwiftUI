//
//  ChatBubble.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 06.02.2024.
//

import SwiftUI

struct ChatBubble: Shape {
    var isFromCurrectUser: Bool
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrectUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        
        return Path(path.cgPath)
    }
    
  
}

#Preview {
    ChatBubble(isFromCurrectUser: true)
}
