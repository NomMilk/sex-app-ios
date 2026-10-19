import SwiftUI

struct NavBar: View {
    var body: some View {
        TabView {
            Image(systemName: "house")
                /*Text("")
                    .tabItem {
                        Image(systemName: "house")
                        Text("home")
            }*/
        }
    }
}

#Preview {
    Profile()
}



// PLACE AFTER Z-STACK
/*
 .safeAreaInset(edge: .bottom) {
 NavBar()
     }
 */



/*
 import SwiftUI

 struct NavBar: View {
     @State private var selectedTab = 0

     var body: some View {
         VStack(spacing: 0) {
             // Screen content
             Group {
                 switch selectedTab {
                 case 0:
                     Text("Home Feed")
                 case 1:
                     Text("Search")
                 default:
                     Text("Profile")
                 }
             }
             .frame(maxWidth: .infinity, maxHeight: .infinity)

             // Custom bottom navigation bar
             HStack {
                 navButton("house", tab: 0)
                 Spacer()
                 navButton("magnifyingglass", tab: 1)
                 Spacer()
                 navButton("person.crop.circle", tab: 2)
             }
             .padding(.horizontal, 40)
             .padding(.top, 12)
             .padding(.bottom, 8)
             .background(Color(uiColor: .systemBackground))
         }
     }

     private func navButton(
         _ image: String,
         tab: Int
     ) -> some View {
         Button {
             selectedTab = tab
         } label: {
             Image(systemName: image)
                 .font(.system(size: 24))
                 .foregroundStyle(
                     selectedTab == tab ? .primary : .secondary
                 )
                 .frame(width: 44, height: 36)
                 .contentShape(Rectangle())
         }
         .buttonStyle(.plain)
     }
 }

 #Preview {
     NavBar()
 }
 */
