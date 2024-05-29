//
//  RegisterView.swift
//  ToDoList
//
//  Created by Deepak Patel on 27/05/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start Organizing Todos", 
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Fullname", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account", background: .green) {
                    //Attempt regsistration
                }
                .padding()
            }
            .offset(y : -50)
            Spacer()
            
        }
    }
}

#Preview {
    RegisterView()
}
