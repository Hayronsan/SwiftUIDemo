//
//  HomeScreen.swift
//  SwiftUIDemo
//
//  Created by Nodir on 14/04/24.
//

import SwiftUI


struct HomeScreen: View {
    @State private var half = false
    @State private var dim = false
    
    var body: some View {
        
        VStack {
            Image("enfil")
                .resizable()
                .scaleEffect(half ? 0.5 : 1.0)
                .opacity(half ? 0.2 : 1.0)
                .animation(.easeInOut(duration: 1.0))
                .onTapGesture {
                    self.dim.toggle()
                    self.half.toggle()
                }
            
                
        }
        
        
    }
}

#Preview {
    HomeScreen()
}
