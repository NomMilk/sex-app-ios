import SwiftUI

struct Profile: View
{
    var body: some View
    {
        ZStack
        {
            LinearGradient(
                colors: [Color.blue, Color.purple],
                startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack
                {
                    Text("Seia")
                        .bold()
                        .font(.title)
                        //.padding(.trailing, 250)
                    
                    Image("seia")
                        .resizable()
                        .frame(maxWidth: 300, maxHeight: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Text("Voice clip")
                        .padding()
                    
                    Text("looking for")
                        .padding()
                    
                    Text("Bio")
                        .padding()
                    
                    Text("Photos")
                        .padding()
                    
                    Text("Stats")
                        .padding()
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Profile()
}



// if you see this fish, ignore it

/*
 import SwiftUI

 struct Profile: View {
     var body: some View {
         ZStack {
             // Layer 1: Background
             LinearGradient(
                 colors: [Color.blue, Color.purple],
                 startPoint: .top,
                 endPoint: .bottom
             )
             .ignoresSafeArea()
             
             // Layer 2: Scrollable Content
             ScrollView(.vertical, showsIndicators: false) {
                 VStack(spacing: 24) { // Uniform spacing between sections
                     
                     // 1. Header (Left-aligned Name)
                     HStack {
                         Text("Seia")
                             .bold()
                             .font(.system(size: 34, weight: .bold))
                             .foregroundColor(.white)
                         Spacer()
                     }
                     
                     // 2. Profile Image
                     Image("seia")
                         .resizable()
                         .aspectRatio(contentMode: .fill) // Keeps the image sharp without stretching
                         .frame(width: 300, height: 300)
                         .clipShape(RoundedRectangle(cornerRadius: 20))
                         .shadow(radius: 10)
                     
                     // 3. Media Section (Voice Clip)
                     HStack {
                         Image(systemName: "waveform")
                         Text("Voice Clip")
                             .bold()
                     }
                     .frame(maxWidth: .infinity)
                     .padding()
                     .background(Color.white.opacity(0.2))
                     .foregroundColor(.white)
                     .cornerRadius(12)
                     
                     // 4. Grouped Profile Information
                     VStack(alignment: .leading, spacing: 16) {
                         
                         // Looking For Section
                         VStack(alignment: .leading, spacing: 4) {
                             Text("LOOKING FOR")
                                 .font(.caption)
                                 .bold()
                                 .foregroundColor(.white.opacity(0.7))
                             Text("Casual relationships, networking, deep chats")
                                 .font(.body)
                                 .foregroundColor(.white)
                         }
                         
                         Divider().background(Color.white.opacity(0.3)) // Clean visual separator
                         
                         // Bio Section
                         VStack(alignment: .leading, spacing: 4) {
                             Text("BIO")
                                 .font(.caption)
                                 .bold()
                                 .foregroundColor(.white.opacity(0.7))
                             Text("Just exploring the city and looking for good vibes. Let's exchange music tracks.")
                                 .font(.body)
                                 .foregroundColor(.white)
                         }
                         
                         Divider().background(Color.white.opacity(0.3))
                         
                         // Stats Section
                         VStack(alignment: .leading, spacing: 4) {
                             Text("STATS")
                                 .font(.caption)
                                 .bold()
                                 .foregroundColor(.white.opacity(0.7))
                             Text("Height: 5'8\" • Active • Night Owl")
                                 .font(.body)
                                 .foregroundColor(.white)
                         }
                     }
                     .padding()
                     .background(Color.black.opacity(0.2)) // Semi-transparent card back
                     .cornerRadius(16)
                     
                     // 5. Photos Section Label
                     VStack(alignment: .leading, spacing: 8) {
                         HStack {
                             Text("Photos")
                                 .font(.headline)
                                 .foregroundColor(.white)
                             Spacer()
                         }
                         
                         // Placeholder block for a photo grid later
                         RoundedRectangle(cornerRadius: 12)
                             .fill(Color.white.opacity(0.1))
                             .frame(height: 150)
                             .overlay(
                                 Text("Photo Gallery Grid Goes Here")
                                     .foregroundColor(.white.opacity(0.5))
                             )
                     }
                 }
                 .padding() // Padding for the entire layout inside the scroll view
             }
         }
     }
 }

 #Preview {
     Profile()
 }
 */
