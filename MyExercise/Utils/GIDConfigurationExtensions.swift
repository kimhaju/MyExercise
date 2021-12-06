//
//  GIDConfigurationExtensions.swift
//  MyExercise
//
//  Created by haju Kim on 2021/12/06.
//

import Firebase
import GoogleSignIn

extension GIDConfiguration {

    /// Get GIDConfiguration instance by providing clientID from GoogleService-Info.plist file
    /// - Returns: GIDConfiguration instance
    static func getGIDConfigurationInstance() -> GIDConfiguration {
        GIDConfiguration(clientID: FirebaseApp.app()?.options.clientID ?? "")
    }
}
