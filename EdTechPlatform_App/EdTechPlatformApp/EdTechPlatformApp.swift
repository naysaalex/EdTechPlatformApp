//
//  EdTechPlatformApp.swift
//  EdTechPlatformApp
//
//  Created by admin on 2/27/23.
//

import SwiftUI

@main
struct EdTechPlatformApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
