//
//  SignUp.swift
//  SwiftUIDemo
//
//  Created by Nodir on 23/04/24.
//

import SwiftUI

struct SignUp: View {
    @Environment(\.presentationMode) var presentation
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            TextField("Firstname",text: $firstname)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            TextField("Lastname",text: $lastname)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            TextField("Email",text: $email)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            TextField("Address",text: $address)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            SecureField("Password",text: $password)
                .frame(height: 45)
                .padding(.leading, 10)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            Button(action: {
                
            }, label: {
                Spacer()
                Text("Sign Up")
                    .tint(.white)
                Spacer()
            })
            .frame(height: 45)
            .background(.red)
            .cornerRadius(20)
            
            Spacer()
            
            HStack {
                
                Text("Already have an account?")
                    .foregroundColor(.blue)
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("Sign In")
                })
                
            }
            
        }
        .padding()
        
        
    }
}

#Preview {
    SignUp()
}
