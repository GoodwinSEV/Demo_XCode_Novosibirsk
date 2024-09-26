//
//  CustomPasswordField.swift
//  SessionSEV
//
//  Created by User on 24.09.2024.
//

import SwiftUI

struct CustomPasswordField: View {
    let placeholder: String
    @Binding var text: String
    var body: some View{
        ZStack{
            SecureField(placeholder, text: $text)
                .padding()
               // .textFieldStyle(RoundedBorderTextFieldStyle())
                .background(Color.white)
                .cornerRadius(7)
                .padding(1)
                .background(Color.gray)
                .cornerRadius(10)
                .foregroundColor(.gray)
            HStack{
                Spacer()
                Image("eye-slash")
                
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            .padding(.trailing, 20)
//            if text == ""{
//                HStack{
//                    Text(placeholder)
//                        .padding()
//                        .padding(.horizontal, 16)
//                        .foregroundColor(.gray)
//                    Spacer()
//                }
//            }
        }
    }
}


