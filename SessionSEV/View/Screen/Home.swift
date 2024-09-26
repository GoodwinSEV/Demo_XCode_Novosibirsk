//
//  Home.swift
//  SessionSEV
//
//  Created by User on 25.09.2024.
//

import SwiftUI

struct HomeView: View{
    var body: some View{
        VStack{
            
            Image(systemName: "1.circle")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text("Home")
        }
    }
}


struct WalletView: View {
    var body: some View{
        VStack{
            Image(systemName: "")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text("Wallet")
        }
    }
}

struct TrackView: View {
    var body: some View{
        VStack{
            Image(systemName: "2.circle")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text("Track")
        }
    }
}

struct ProfileView: View {
    var body: some View{
        VStack{
            Image(systemName: "2.circle")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text("Profile")
        }
    }
}

struct Home: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            WalletView()
                .tabItem {
                    Image(systemName: "wallet-3")
                    Text("Wallet")
                }
            TrackView()
                .tabItem {
                    Image(systemName: "track")
                    Text("Track")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "profile-circle")
                    Text("Profile")
                }
            
        }
    }
}



//struct Home: View {
//    var body: some View {
//        Text("Hello, World!")
//    }
//}

#Preview {
    Home()
}
