//
//  ContentView.swift
//  SwiftUIAuthentication
//
//  Created by Angelos Staboulis on 6/1/24.
//

import SwiftUI
import LocalAuthentication
struct ContentView: View {
    @State var biometrics:Bool
    @State var authentication = Authentication()
    var body: some View {
        VStack {
                if biometrics {
                    Text("Unlocked")
                }else{
                    Text("Locked")
                }
        }.onAppear(perform: {
                authentication.authenticate { biometrics in
                    self.biometrics = biometrics
                }
        })
        
    }

}

#Preview {
    ContentView(biometrics: false)
}
