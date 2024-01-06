//
//  Authentication.swift
//  SwiftUIAuthentication
//
//  Created by Angelos Staboulis on 6/1/24.
//

import Foundation
import LocalAuthentication
class Authentication{
    let context = LAContext()
    var error:NSError?
    func authenticate(completion:@escaping (Bool)->()){
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error:&error){
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Login with Biometrics") { success, error in
                if success{
                    completion(success)
                }else{
                    debugPrint("There was a problem")
                }
            }
        }else{
            debugPrint("No biometrics exists")
        }
    }
   
}
