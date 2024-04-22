//
//  HomeScreen.swift
//  SwiftUIDemo
//
//  Created by Nodir on 14/04/24.
//

import SwiftUI


struct HomeScreen: View {
    
    
    var body: some View {
        
        TabView {
            
            Image("photo1")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("photo2")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("photo3")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("photo4")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .tabViewStyle(PageTabViewStyle())
        
        
    }
}

#Preview {
    HomeScreen()
}
