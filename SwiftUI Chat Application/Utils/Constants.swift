//
//  Constants.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 11.02.2024.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_MESSAGES = Firestore.firestore().collection("messages")
let COLLECTION_CHANNELS = Firestore.firestore().collection("channels")
