//
//  ContentView.swift
//  SessionSEV
//
//  Created by User on 23.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetailView = false
    @State var isShowAlert = false
    @State private var checkBox: Bool = false
    @StateObject var userViewModel = UserViewModel()
 
    var body: some View {
        NavigationView{
            VStack{
                Text("Create an account")
                    .font(.custom("Roboto-Medium", size: 24))
                Text("Complete the sign up to get started")
                
                VStack (alignment: .leading, spacing: 10){
                    Text("Full name")
                    CustomTextField(placeholder: "Ivanov Ivan", text: $userViewModel.user.name)
                    Text("Phone Number")
                    CustomTextField(placeholder: "+7(999)999-99-99", text: $userViewModel.user.phone)
                    Text("Email Address")
                    CustomTextField(placeholder: "**********@mail.com", text: $userViewModel.email)
                    Text("Password")
                    CustomPasswordField(placeholder: "**********", text: $userViewModel.password)
                    Text("Confirm Password")
                    CustomPasswordField(placeholder: "**********", text: $userViewModel.confirmPassword)
                }
                .padding()
                
                HStack{
                    CheckBox(value: $checkBox)
                    Spacer()
                    Text("By ticking this box, you agree to our ")
                    
                    Link(destination: URL(string: "https://ya.ru")!) {Text("Teams and conditions and private policy")}
                }
                .padding()
                
                
                HStack{
                    NavigationLink(destination: LogInView(), isActive: $isShowingDetailView)                { EmptyView() }
                    Button(action: {
                        userViewModel.signUp()
//                        if $userViewModel.user.name != "" {
//                            isShowingDetailView.toggle()
//                        }
//                        else {
//                            isShowAlert=true
//                            print(isShowAlert.description)
//                        }
                    })
                    { Text("Sign up")
                            .frame(width: 342, height: 30)
                            .font(.custom("Roboto-Bold", size: 16))
                            .padding()
                            .background(isShowAlert ? .gray : .blue)
                            .foregroundColor(.white)
                            .cornerRadius(4)
                    }
                    .alert(isPresented: $isShowAlert) {
                        Alert(title: Text ("Ошибка"),
                              message: Text("Заполнены не все поля"),
                              dismissButton: .default(Text("OK")))
                    }
                }
                
                HStack{
                    Text("Already have an account?")
                    
                    NavigationLink(destination: LogInView()){
                                    Text("SignIn")
                                   .background(Color.blue)
                    }
                }
             
                
                Text("or sign in using")
                
                Image("Vector")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
        }
    }
}

#Preview {
    ContentView()
}
