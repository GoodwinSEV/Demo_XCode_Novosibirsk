//
//  LogIn.swift
//  SessionSEV
//
//  Created by User on 24.09.2024.
//

import SwiftUI

struct LogInView: View {
    @State private var isShowingDetailView = false
    @State var isShowAlert = false
    @State private var checkBox: Bool = false
    @StateObject var userViewModel = UserViewModel()
    
    var body: some View {
        VStack{
            Text("Welcome Back")
                .font(.custom("Roboto-Medium", size: 24))
            Text("Fill in your email and password to continue")
            VStack (alignment: .leading, spacing: 10){
                Text("Email Address")
                CustomTextField(placeholder: "**********@mail.com", text: $userViewModel.email)
                Text("Password")
                CustomPasswordField(placeholder: "**********", text: $userViewModel.password)
                
                
            }
            .padding()
            
            HStack{
                
                NavigationLink(destination: Home(), isActive: $userViewModel.isNavigate)                { EmptyView() }
                Button(action: {
                    userViewModel.signIn()
//                    if login != "" {
//                        isShowingDetailView.toggle()
//                    }
//                    else {
//                        isShowAlert=true
//                        print(isShowAlert.description)
//                    }
                })
                { Text("Log in")
                        .frame(width: 342, height: 30)
                        .font(.custom("Roboto-Bold", size: 16))
                        .padding()
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                }
//                .alert(isPresented: $isShowAlert) {
//                    Alert(title: Text ("Ошибка"),
//                          message: Text("Заполнены не все поля"),
//                          dismissButton: .default(Text("OK")))
//                }
                
                
             
                
            }
            
            HStack{
                CheckBox(value: $checkBox)
                
                Text("Remember password")
                Spacer()
                
                Link(destination: URL(string: "https://ya.ru")!) {Text("Forgot password")}
                
            }
            .padding()
            
            
            Text("Already have an account?")
            
            NavigationLink(destination: LogInView()){
                            Text("SignUp")
//                                    .foregroundColor(.red)
//                                    .padding()
//                                    .background(Color.blue)
            }

            
            Text("or log in using")
            
            Image("Vector")
                .imageScale(.large)
                .foregroundStyle(.tint)
        }
    }
}

#Preview {
    LogInView()
}
