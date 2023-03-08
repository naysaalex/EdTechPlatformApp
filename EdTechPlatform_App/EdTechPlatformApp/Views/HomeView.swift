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
        ScrollView{
            LazyVStack{
                //will scroll and only show elements on the screen
                //memory manage technique
                ForEach(model.modules){module in
                //learning card
                       HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                                    
                //quiz card
                       HomeViewRow(image: module.quiz.image, title: "\(module.category) Test", description: module.quiz
                            .description, count: "\(module.quiz.questions.count) questions", time: module.quiz.time)
                                    
                                    
                                    
            }//end of foreach
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
