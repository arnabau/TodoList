//
//  TodoListApp.swift
//  TodoList
//
//  Created by Arnaldo Baumanis on 2/12/25.
//

import SwiftUI

/*
 MVVM Arquitecture
 
 Model  - data point
 View   - UI
 ViewModel - manages Models for View
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
