//
//  HeaderView.swift
//  ToDoList
//
//  Created by Deepak Patel on 27/05/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
               
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("Get Your things Done")
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .bold()
            }
            .padding(.top,30)

        }
        .frame(width: UIScreen.main.bounds.width*3,
               height: 300)
        .offset(y:-100)
    }
}

#Preview {
    HeaderView()
}
