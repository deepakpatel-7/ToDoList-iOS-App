//
//  LoginView.swift
//  ToDoList
//
//  Created by Deepak Patel on 27/05/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
                
                //Header
                HeaderView(title: "To DO List", subtitle: "Get Things Done", angle: 15, background: .pink)
                
                
                //login Form
                Form {
                    TextField("Email Address" , text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password" , text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", background: .blue, action: {
                        //attempt log in
                    })
                    .padding()
                }.offset(y:-50)
                
                
                
                //Create Account
                
                VStack {
                    Text("New account here ?")
                    NavigationLink("Create An Account",                                   destination: RegisterView())
                }
                .padding(.bottom,50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
