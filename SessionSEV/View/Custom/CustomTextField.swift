//
//  CustomTextField.swift
//  SessionSEV
//
//  Created by User on 23.09.2024.
//

import SwiftUI

struct CustomTextField: View {
    let placeholder: String
  //  let label: String
    @Binding var text: String
    var body: some View{
        ZStack{
            TextField(placeholder, text: $text)
                .padding()
               // .textFieldStyle(RoundedBorderTextFieldStyle())
                .background(Color.white)
                .cornerRadius(7)
                .padding(1)
                .background(Color.gray)
                .cornerRadius(10)
                .foregroundColor(.black)
            
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






