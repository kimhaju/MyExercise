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
    
    @AppStorage("log_Status") var log_Status = false
    
    var body: some View {
        if log_Status {
            NavigationView {
                VStack{
                    Text("로그인 완료 ")
                    
                    Button("Logout"){
                        GIDSignIn.sharedInstance.signOut()
                        try? Auth.auth().signOut()
                        
                        withAnimation {
                            log_Status = false
                        }
                    }
                }
            }
        }
        else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
