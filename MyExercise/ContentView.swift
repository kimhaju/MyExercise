//
//  ContentView.swift
//  MyExercise
//
//  Created by haju Kim on 2021/12/04.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ContentView: View {
    @EnvironmentObject var viewModel: LoginViewModel
    
    var body: some View {
        
        if viewModel.isUserLoggedIn {
            HomeView()
        } else {
            LoginView()
        }
    }
}


//@AppStorage("log_Status") var log_Status = false
//
//var body: some View {
//    if log_Status {
//        HomeView()
//    }
//    else {
//        LoginView()
//    }
//}
//
//switch viewModel.state {
//
//case .signedOut: LoginView()
//case .signedIn: HomeView()
//
//}
