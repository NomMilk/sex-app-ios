//
//  Profile.swift
//  Sex App
//
//  Created by Homan Qiu on 10/9/26.
//


import SwiftUI

struct Profile: View {
    var body: some View
    {
        ZStack
        {
            LinearGradient(
                colors: [Color.blue, Color.purple],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack
            {
                Text("Profile")
                    .bold()
                    .font(.title)
                Image("seia")
                    .frame(maxWidth: 5)
                Text("pfp")
                Text("name")
                Text("voice clip")
                Text("looking for")
                Text("Bio")
                Text("Photos")
                Text("Stats")
                
                Spacer()
            }
        }
    }
}

#Preview {
    Profile()
}
