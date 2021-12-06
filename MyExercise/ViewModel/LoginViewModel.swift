//
//  LoginViewModel.swift
//  MyExercise
//
//  Created by haju Kim on 2021/12/06.
//

import SwiftUI
import Firebase
import GoogleSignIn

class LoginViewModel: ObservableObject {
    
    @Published var isUserLoggedIn = false
    
    func signIn() {
        do {
            let config = GIDConfiguration.getGIDConfigurationInstance()
            let uiViewController = try UIApplication.getRootViewController()
    
            GIDSignIn.sharedInstance.signIn(with: config, presenting: uiViewController) { user, error in
                guard error == nil else { return }
                guard user != nil else { return }
                self.isUserLoggedIn = true
          }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func signOut() {
        GIDSignIn.sharedInstance.signOut()
        isUserLoggedIn = false
    }
}



