import SwiftUI

struct Profile: View
{
    var body: some View
    {
        ZStack
        {
            LinearGradient(
                colors: [ColorPalette.pagebg],
                startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack(alignment: .leading)
                {
                    HStack
                    {
                        Text("Seia")
                            .bold()
                            .font(.title)
                        
                        Text("17")
                            .font(.title)
                    }
                        //.padding(.trailing, 250)
                    
                    Image("seia")
                        .resizable()
                        .frame(maxWidth: 300, maxHeight: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Text("Voice clip")
                        .padding()
                    
                    Text("Looking for")
                        .padding()
                    
                    Text("Bio")
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
