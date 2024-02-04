//
//  EditProfileView.swift
//  SwiftUI Chat Application
//
//  Created by Khan on 02.02.2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullname = "Elin Brok"
    var body: some View {
       
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack {
                // header
                
                VStack (alignment: .leading) {
                    HStack {
                        VStack {
                            Image(.profile1)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 48, height: 48)
                                .clipShape(Circle())
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Edit")
                            })
                         
                
                        }
                        Text("Please Enter your Name or your profile photo")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .padding([.bottom, .horizontal])
                    }
                  Divider()
                        .padding(.horizontal)
                    TextField("", text: $fullname)
                        .padding(8)
                        .background(Color.white)
                }.padding()
                .background(Color.white)
                
                // status
                
                VStack (alignment: .leading) {
                    Text("Status")
                        .foregroundStyle(.gray)
                        
                    
                    NavigationLink(destination: StatusSelectorView()) {
                        HStack {
                            Text("At the Movie")
                                .padding(8)
                               
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            
                        }.background(Color.white)
                             
                    }
                    
                
                }.padding(5)
                Spacer()
            }
           
        
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
        
       
    }
}

#Preview {
    EditProfileView()
}
