//
//  MyExerciseApp.swift
//  MyExercise
//
//  Created by haju Kim on 2021/12/04.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct MyExerciseApp: App {
    //->앱 델리게이트 연결
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    @StateObject var viewModel = LoginViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}

