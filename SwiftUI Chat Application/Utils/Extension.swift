//
//  Extension.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 05.02.2024.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil , for: nil)
    }
}
