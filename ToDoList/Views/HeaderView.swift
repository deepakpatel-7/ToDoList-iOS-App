//
//  HeaderView.swift
//  ToDoList
//
//  Created by Deepak Patel on 27/05/24.
//

import SwiftUI

struct HeaderView: View {
    let title : String
    let subtitle : String
    let angle : Double
    let background : Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
               
            
            VStack {
                Text(title)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .bold()
            }
            .padding(.top,80)

        }
        .frame(width: UIScreen.main.bounds.width*3,
               height: 350)
        .offset(y:-150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
