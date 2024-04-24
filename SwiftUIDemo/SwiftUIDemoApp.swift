//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Nodir on 14/04/24.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            Starter().environmentObject(Status())
        }
    }
}
