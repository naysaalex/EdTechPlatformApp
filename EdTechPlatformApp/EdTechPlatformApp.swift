//
//  EdTechPlatformApp.swift
//  EdTechPlatformApp
//
//  Created by admin on 2/27/23.
//
/*json file is data
 - considered a text based format
 - arrays and subarrays (structure)*/

/*lazy v-stack will only show what you are looking at in the moment - the rest will come up as you scroll*/

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
