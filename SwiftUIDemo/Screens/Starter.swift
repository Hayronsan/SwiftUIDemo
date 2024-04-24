//
//  Starter.swift
//  SwiftUIDemo
//
//  Created by Nodir on 24/04/24.
//

import SwiftUI

struct Starter: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        VStack{
            if self.status.userid != nil {
                HomeScreen()
            }else{
                SignIn()
            }
            
        }
        .onAppear {
            status.listen()
        }
    }
}

#Preview {
    Starter()
}
