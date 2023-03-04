//
//  ContentView.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-01.
//

import SwiftUI
import Firebase
struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false

    
    
    var body: some View {
        NavigationView{
        
        ZStack {
           
            Color.blue
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
            
            VStack {
               
                
                
                
                
                Spacer()
            
                Text("PLWD Login").font(.title).foregroundColor(Color.black).multilineTextAlignment(.center).bold() .padding(.vertical, -13.0)
                Spacer()
                Image("logo2")
                    .resizable()
                    .foregroundColor(Color.red)
                    .cornerRadius(200.0)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing], -2.0/*@END_MENU_TOKEN@*/)
                
                TextField("Username", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongUsername))
                
                
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                
                Button("Login") {
                                        authenticateUser(username: username, password: password)
                
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
          
                
                NavigationLink(destination: createnewaccountUIView()){
                    Text ("Create account")
                }.foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    Spacer()
                
//                NavigationLink(destination: HomeView()) {
//                    Button("Login") {
//                        authenticateUser(username: username, password: password)
//
//                    }
//
//
//                           }
                NavigationLink(destination: NavigatingView(), isActive: $showingLoginScreen) {
                                   
                                   
                               }
                
            }.navigationBarHidden(false)
            Spacer()
        }
        }
    }
        
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == (username2) {
            wrongUsername = 0
            if password.lowercased() == (password2) {
                wrongPassword = 0
                showingLoginScreen = true

            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
        
        
       
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//
//  HomeView.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-01.
//

