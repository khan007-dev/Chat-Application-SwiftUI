//
//  ProfilePhotoSelectorView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 08.02.2024.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var imagePickerPresented = false
    @State private var selectedImage : UIImage?
    @State private var profileImage: Image?
//    @EnvironmentObject var viewModel: AuthViewModel
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
       
        VStack  {
            Button {
                imagePickerPresented.toggle()
            } label: {
                
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                }
                else
                {
                    Image(.profile1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                        .padding(.top, 44)
                        .foregroundStyle(.black)
                }
            }
            .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                ImagePicker(image: $selectedImage)
            })
            
            Text(profileImage == nil ? "Select a profile image" : "Great! Tap below to continue")
                .font(.system(size: 20, weight: .semibold))
            
            if let image = selectedImage {
                Button(action: {
                    viewModel.uploadProfileImage(image)
                    
                }, label: {
                    Text("Continue")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Rectangle())
                        .cornerRadius(12)
                        .padding()
                })       .shadow(color: .gray, radius: 10)
            }
            Spacer()
        }.navigationBarBackButtonHidden(true)
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        profileImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    ProfilePhotoSelectorView()
}
