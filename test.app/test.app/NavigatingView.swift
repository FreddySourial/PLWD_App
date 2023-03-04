//
//  NavigatingView.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-02.
//

import SwiftUI

struct NavigatingView: View {
    var body: some View {
        TabView{
                   NavigationView {
//                       HomeView()
                       bluetooth()
                           

                   }


                   .tabItem {
                       Image("ic-tasklist")
                           .renderingMode(.template)
                   }

                   historyView()
                       .padding(.bottom, 5.0)
                       .tabItem {
                           Image("ic-reminders")
                               .renderingMode(.template)
                       }.padding()
                   myProfileView()
                       .padding(.bottom, 5.0)
                       .tabItem {
                           Image("ic-settings")
                               .renderingMode(.template)
                       }.padding()
                   viewView()
                       .padding(.bottom, 5.0)
                       .tabItem {
                           Image("ic-inbox")
                               .renderingMode(.template)
                       }


               }
               }
                   
           }

struct NavigatingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigatingView()
    }
}
