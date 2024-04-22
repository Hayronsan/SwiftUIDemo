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
            LottieView(animationFileName: "facebook", loopMode: .loop)
                .frame(width: 200, height: 200)
                
        }
        
        
    }
}

#Preview {
    HomeScreen()
}
