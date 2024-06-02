//
//  ContentView.swift
//  ToDoList
//
//  Created by Deepak Patel on 27/05/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn , !viewModel.currentUserId.isEmpty {
            //signed in
            ToDoListView()
        } else {
            LoginView()
        }
     
    }
}

#Preview {
    MainView()
}
