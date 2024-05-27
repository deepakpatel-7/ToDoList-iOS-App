//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Deepak Patel on 27/05/24.
//
import FirebaseCore
import SwiftUI


@main
struct ToDoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
