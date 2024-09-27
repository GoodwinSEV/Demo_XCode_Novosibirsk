//
//  ForgotPassword.swift
//  SessionSEV
//
//  Created by Саввина Елена on 27.09.2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    @StateObject var userViewModel = UserViewModel()
    @State private var isShowingDetailView = false
    @State var isShowAlert = false
    
    var body: some View {
        //        VStack(alignment: .leading) {
        //            Text("Forgot Password")
        //                .padding(10) //со всех сторон
        //                .padding(.top, 10) //сверху на 10
        //                .font(.custom("Roboto-Medium", size: 24))
        //                .foregroundStyle(.black)
        //            Text("Enter your email address")
        //                .padding(.leading, 10)
        //                .padding(.top, 5)
        //                .font(.custom("Roboto-Medium", size: 16))
        //                .foregroundStyle(.gray)
        //            Text("Email address")
        //                .padding(.leading, 10)
        //                .padding(.top, 45)
        //                .font(.custom("Roboto-Medium", size: 16))
        //                .foregroundStyle(.gray)
        //            CustomTextField(placeholder: "**********@mail.com", text: $userViewModel.email)
        //                .padding(10)
        //
        //            HStack{
        //            NavigationLink(destination: LogInView(), isActive: $isShowingDetailView)                { EmptyView() }
        //
        //                Button(action: {
        //                    userViewModel.signUp()
        //
        //                })
        //                { Text("Send OTP")
        //                        .frame(height: 56)
        //                        .frame(maxWidth: .infinity)
        //                        .font(.custom("Roboto-Bold", size: 16))
        //                    //   .padding()
        //                        .background(isShowAlert ? .gray : .blue)
        //                        .foregroundColor(.white)
        //                        .cornerRadius(4)
        //                }
        //                .alert(isPresented: $userViewModel.isShowAlert){//$isShowAlert) {
        //                    Alert(title: Text ("Ошибка"),
        //                          message: Text("Заполнены не все поля"),
        //                          dismissButton: .default(Text("OK")))
        //                }
        //                .padding(10)
        //            }
        //            .background(Color.red)
        //
        //
        //            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
        //                Text("Remember password? Back toSign In" )
        //                    .padding(.leading, 10)
        //                    .padding(.top, 15)
        //                    .font(.custom("Roboto-Medium", size: 16))
        //                    .foregroundStyle(.gray)
        //            }
        //            .background(Color.yellow)
        //
        //        }
        //        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        //        .padding(10)
        //        .background(Color.blue)
        
        VStack(alignment: .leading) {
            Text("Forgot Password")
                .padding(10) //со всех сторон
                .padding(.top, 10) //сверху на 10
                .font(.custom("Roboto-Medium", size: 24))
                .foregroundStyle(.black)
            Text("Enter your email address")
                .padding(.leading, 10)
                .padding(.top, 5)
                .font(.custom("Roboto-Medium", size: 16))
                .foregroundStyle(.gray)
            Text("Email address")
                .padding(.leading, 10)
                .padding(.top, 45)
                .font(.custom("Roboto-Medium", size: 16))
                .foregroundStyle(.gray)
            CustomTextField(placeholder: "**********@mail.com", text: $userViewModel.email)
                .padding(10)
            
            HStack{
                NavigationLink(destination: LogInView(), isActive: $isShowingDetailView)                { EmptyView() }
                
                Button(action: {
                    userViewModel.signUp()
                    
                })
                { Text("Send OTP")
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .font(.custom("Roboto-Bold", size: 16))
                    //   .padding()
                        .background(.buttonGrey)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                }
                .alert(isPresented: $userViewModel.isShowAlert){//$isShowAlert) {
                    Alert(title: Text ("Ошибка"),
                          message: Text("Заполнены не все поля"),
                          dismissButton: .default(Text("OK")))
                }
                .padding(10)
                .padding(.top, 50)
            }
            //    .background(Color.red)
            
            
            HStack{
                Text("Remember password? Back to")
                    .padding(.leading, 10)
                    .padding(.top, 15)
                    .font(.custom("Roboto-Medium", size: 16))
                    .foregroundStyle(.gray)
                NavigationLink(destination: LogInView()){
                    Text("SignIn")
                    //    .background(Color.blue)
                }
               // .padding(.leading, 10)
                .padding(.top, 15)
                .font(.custom("Roboto-Medium", size: 16))
                .foregroundStyle(.blue)
                
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
            //  .background(Color.yellow)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(10)
        // .background(Color.blue)
        
    }
}

#Preview {
    ForgotPasswordView()
}
