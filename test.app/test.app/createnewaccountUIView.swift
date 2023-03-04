//
//  createnewaccountUIView.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-03.
//

import SwiftUI

struct createnewaccountUIView: View {
    @ObservedObject var model = ViewModel()
    
    @State var password1 = ""
    @State var username1 = ""
    var body: some View {
        
        VStack {
            Divider()
            VStack(spacing: 5){
                TextField ("username1", text: $username1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("password1", text: $password1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    model.addUser(username1: username1, password1: password1)
                    username1 = ""
                    password1 = ""
                }, label: {
                    Text("Create New Account")
                }) .foregroundColor(Color.blue)
            }
        }
    }
}

struct createnewaccountUIView_Previews: PreviewProvider {
    static var previews: some View {
        createnewaccountUIView()
    }
}
