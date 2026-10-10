//
//  Login.swift
//  Sex App
//
//  Created by Homan Qiu on 10/9/26.


//  why did son put a watermark in the code

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.red, Color.blue],
    startPoint: .top, endPoint: .bottom)

struct Login: View
{
    @State var username = ""
    @State var password = ""
    
    var body: some View
    {
        ZStack
        {
            VStack
            {
                Text("Sex app")
                TextField("Enter Your Username", text: $username)
                    .font(.subheadline)
                    .autocapitalization(.none)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                // Password secure field
                SecureField("Enter Your Password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .autocapitalization(.none)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                Button(action: {  }, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }).padding(.vertical)
                
                NavigationLink(destination: SignUp()) {
                    Text("Create new account")
                        .font(.subheadline)
                        .padding(10)
                        .hoverEffect(.lift)}
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(alignment: .center) {
            Image("seia")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()}
    }
}

#Preview {
    Login()
}
