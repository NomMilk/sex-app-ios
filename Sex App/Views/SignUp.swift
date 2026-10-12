//
//  SignUp.swift
//  Sex App
//
//  Created by Homan Qiu on 10/9/26.
//


import SwiftUI

struct SignUp: View {
    @State var username = ""
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            TextField("Enter Your Username", text: $username)
                .font(.subheadline)
                .autocapitalization(.none)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
            
            TextField("Enter Your Email", text: $email)
                .font(.subheadline)
                .autocapitalization(.none)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
            
            TextField("Enter Your Password", text: $password)
                .font(.subheadline)
                .autocapitalization(.none)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
        }
        .padding()
    }
}

#Preview {
    SignUp()
}
