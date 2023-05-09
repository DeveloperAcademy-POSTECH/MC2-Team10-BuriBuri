//
//  MC2_BuriBuriApp.swift
//  MC2_BuriBuri
//
//  Created by xnoag on 2023/05/09.
//

import SwiftUI

@main
struct MC2_BuriBuriApp: App {
    @StateObject var dataModel = DataModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ARView()
            }
            .environmentObject(dataModel)
        }
    }
}
