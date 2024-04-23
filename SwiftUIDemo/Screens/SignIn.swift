//
//  SignIn.swift
//  SwiftUIDemo
//
//  Created by Nodir on 23/04/24.
//

import SwiftUI

struct SignIn: View {
    @State  var user = ""
    @State  var password = ""
    @State var isPresent = false
    
    var body: some View {

        NavigationView {
            
            VStack {
                
                Spacer()
                
                Image("person")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                
                TextField("User ID", text: $user)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                SecureField("User PW", text: $password)
                    .frame(height: 45)
                    .padding(.leading, 10)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(20)
                
                Button(action: {
                    
                }, label: {
                    HStack{
                        Spacer()
                        Text("Sign In")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                })
                .frame(height: 45)
                .background(.red)
                .cornerRadius(20)
                
                Spacer()
                
                HStack {
                    
                    Text("Don't have an account?")
                        .foregroundColor(.blue)
                    
                    Button(action: {
                        isPresent = true
                    }, label: {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                    }).sheet(isPresented: $isPresent, content: {
                        SignUp()
                    })
                        
                    
                }
                
            }
            .padding()
            
        }
        
    }
}

#Preview {
    SignIn()
}