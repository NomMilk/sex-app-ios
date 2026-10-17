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
            Button(action: {  }, label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }).padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    SignUp()
}
