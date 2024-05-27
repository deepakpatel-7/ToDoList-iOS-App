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
                HeaderView()
                
                
                //login Form
                Form {
                    TextField("Email Address" , text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password" , text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                
                
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
