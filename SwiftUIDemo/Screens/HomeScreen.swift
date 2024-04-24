//
//  HomeScreen.swift
//  SwiftUIDemo
//
//  Created by Nodir on 14/04/24.
//

import SwiftUI


struct HomeScreen: View {
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        NavigationView {
            VStack {
                Button(action: {
                    
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status.listen()
                }, label: {
                    Text("Logout")
                })
            }
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
        
        
    }
}

#Preview {
    HomeScreen()
}
