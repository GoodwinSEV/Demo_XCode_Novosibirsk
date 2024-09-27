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
        
        VStack(alignment: .leading){
            Text("Welcome Back")
                .font(.custom("Roboto-Medium", size: 24))
                .padding(.top, 10)
            Text("Fill in your email and password to continue")
                .foregroundStyle(.gray)
                .padding(.top, 10)
            Text("Email Address")
                .foregroundStyle(.gray)
                .padding(.top, 10)
            CustomTextField(placeholder: "**********@mail.com", text: $userViewModel.email)
            Text("Password")
                .foregroundStyle(.gray)
                .padding(.top, 10)
            CustomPasswordField(placeholder: "**********", text: $userViewModel.password)
            
            HStack{
                CheckBox(value: $checkBox)
                    .padding(.top, 15)
                    .foregroundStyle(.gray)
                Text("Remember password")
                    .padding(.top, 15)
                Spacer()
                
                NavigationLink(destination: ForgotPasswordView()){
                    Text("Forgot password")
                    //    .background(Color.blue)
                }
                // .padding(.leading, 10)
                .padding(.top, 15)
                .font(.custom("Roboto-Regular", size: 16))
                .foregroundStyle(.blue)
                
            }
          
            
            HStack{
                
                NavigationLink(destination: Home(), isActive: $userViewModel.isNavigate)                { EmptyView() }
                Button(action: {
                    userViewModel.signIn()
                })
                { Text("Log in")
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .font(.custom("Roboto-Bold", size: 16))
                    //   .padding()
                        .background(.buttonGrey)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                }
                                       
            }
            .padding(.top, 100)
            
            HStack{
                Text("Already have an account?")
                    .padding(.leading, 10)
                    .padding(.top, 15)
                    .font(.custom("Roboto-Medium", size: 16))
                    .foregroundStyle(.gray)
                NavigationLink(destination: LogInView()){
                    Text("SignUp")
                        .font(.custom("Roboto-Medium", size: 16))
                        .foregroundColor(.blue)
                }
               // .padding(.leading, 10)
                .padding(.top, 15)
                .font(.custom("Roboto-Medium", size: 16))
                .foregroundStyle(.blue)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
            //  .background(Color.yellow)
            
            VStack{
                Text("or log in using")
                    .font(.custom("Roboto-Medium", size: 16))
                    .padding(.top, 30)
                    .foregroundStyle(.buttonGrey)
                            
                Image("Vector")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(10)
        //   .padding(.top, 50)
    }
}

#Preview {
    LogInView()
}
