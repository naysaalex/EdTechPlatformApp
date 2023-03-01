//
//  ContentView.swift
//  EdTechPlatformApp
//
//  Created by admin on 2/27/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model:ContentModel //@published is the highest version as it is viewable everywhere
    //json files are very important - creates an array of arrays and all your information sits in this
    //entire facebook is set up on these files
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
