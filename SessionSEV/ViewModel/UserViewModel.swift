//
//  UserViewModel.swift
//  SessionSEV
//
//  Created by User on 25.09.2024.
//

import Foundation

class UserViewModel: ObservableObject{
    
    @Published var user = UserModel(id: UUID(), name: "", phone: "", created_at: .now)
    
    @Published  var email: String = ""
    @Published  var password: String = ""
    @Published  var confirmPassword: String = ""
    
    @Published  var isProgress: Bool = false
    @Published var isNavigate: Bool = false
    @Published  var error: Bool = false
    
    @Published private var isShowingDetailView = false
    @Published var isShowAlert = false
    //    @State private var checkBox: Bool = false
    //    @StateObject var userViewModel = UserViewModel()
    
    func signUp() {
        
        //            if user.name != "" {
        //                                        isShowingDetailView.toggle()
        //                                    }
        //                                    else {
        //                                        isShowAlert=true
        //                                        print(isShowAlert.description)
        //                                    }
        //
        Task {
            do {
                await MainActor.run {
                    self.isProgress = true
                }
                try await Repositories.instance.signUp(name: user.name, phone: user.phone, email: email, password: password)
                await MainActor.run {
                    self.isNavigate = true
                    self.isProgress = false
                }
            } catch {
                print("ERROR: " + error.localizedDescription)
                await MainActor.run {
                    self.error = true
                    self.isProgress = false
                }
            }
        }
    }
    
    func signIn() {
        
     //   if email == "1@mail.ru" {
//                isShowingDetailView.toggle()
            Task {
                do {
                    await MainActor.run {
                        self.isProgress = true
                    }
                    try await Repositories.instance.signIn(email: email, password: password)
                    await MainActor.run {
                        self.isNavigate = true
                        self.isProgress = false
                    }
                } catch {
                    print("ERROR: " + error.localizedDescription)
                    await MainActor.run {
                        self.error = true
                        self.isProgress = false
                    }
                }
            }
        }
//            else {
//                isShowAlert=true
//                print(isShowAlert.description)
//            }
   //     }
    }
    

