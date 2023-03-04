//
//  historyView.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-01.
//

import SwiftUI
import Firebase
struct historyView: View {
    @ObservedObject var model = ViewModel()
    
    @State var name = ""
    @State var notes = ""
    @State var password1 = ""
    @State var username1 = ""
    
    var body: some View {
        VStack {
            List (model.list) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    
                    
                    //update button
                    //                    Button(action: {
                    //                        model.updateData(todoToUpdate: item)
                    //                    }, label: {
                    //                        Image(systemName: "pencil")
                    //                    })
                    
                    
                        .buttonStyle(BorderlessButtonStyle())
                    
                    Button(action: {
                        model.deleteData(todoToDelete: item)
                    }, label: {
                        Image(systemName: "minus.circle")
                    })
                    .buttonStyle(BorderlessButtonStyle())
                    
                }
            }
                
                /////////////////////////////////////////
            List (model.list) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    
                    
                    //update button
//                    Button(action: {
//                        model.updateData(todoToUpdate: item)
//                    }, label: {
//                        Image(systemName: "pencil")
//                    })
                    
                    
                    .buttonStyle(BorderlessButtonStyle())
                    
                    Button(action: {
                        model.deleteData(todoToDelete: item)
                    }, label: {
                        Image(systemName: "minus.circle")
                    })
                    .buttonStyle(BorderlessButtonStyle())

                }
                
            }
         Divider()
            VStack(spacing: 5){
                TextField ("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("notes", text: $notes)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    model.addData(name: name, notes: notes)
                name = ""
                notes = ""
                }, label: {
                    Text("Add safe space")
                }) .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            

        }
    }
        
    init(){
        model.getData()
        model.getUsers()
    }
  
   
}

struct historyView_Previews: PreviewProvider {
    static var previews: some View {
        historyView()
    }
}
