//
//  HomeScreen.swift
//  SwiftUIDemo
//
//  Created by Nodir on 14/04/24.
//

import SwiftUI


struct HomeScreen: View {
    
    @State var showingAlert = false
    @State var isSheet = false
    var actioSHeet: ActionSheet {
        let title = "IOS"
        let message = "Here we go"
        return ActionSheet(title: Text(title), message: Text(message), buttons: [
            .default(Text("OK"),action: {
                
            }),
            .destructive(Text("NO"), action: {
                
            })
        
        ])
    }
    
    var body: some View {
        
        TabView {
            
            Button(action: {
                showingAlert = true
            }, label: {
                Text("Alert Dialog")
                    .font(.title)
            }).alert(isPresented: $showingAlert, content: {
                let title = "IOS"
                let message = "Here we go"
                return Alert(title: Text(title), message: Text(message), primaryButton: .destructive(Text("NO")){
                    
                }, secondaryButton: .default(Text("OK")){
                    
                })
            })
                .tabItem {
                    Image(systemName: "circle")
                    Text("Alert")
                }
            
            Button(action: {
                isSheet = true
            }, label: {
                Text("Action Sheet")
                    .font(.title)
            }).actionSheet(isPresented: $isSheet, content: {
                self.actioSHeet
            })
                .tabItem {
                    Image(systemName: "circle")
                    Text("Sheet")
                }
            
            
        }
        
        
    }
}

#Preview {
    HomeScreen()
}
