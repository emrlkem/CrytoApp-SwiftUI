//
//  _CryptoApp.swift
//  +Crypto
//
//  Created by Emre Ülkem on 23.03.2023.
//

import SwiftUI

@main
struct _CryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}


