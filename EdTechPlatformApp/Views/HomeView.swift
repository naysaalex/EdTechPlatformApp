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
        NavigationView{
            VStack{
            Text("What do you want to do today?")
                    .padding(.leading,20)
        ScrollView{
            LazyVStack{
                //will scroll and only show elements on the screen
                //memory manage technique
                
                ForEach(model.modules){module in
                                       
                    VStack(spacing:20){
                        NavigationLink(
                            destination: ContentView()
                            .onAppear(perform: {
                                model.beginModule(module.id)
                            }),
                            label: {
                            //learning card
                            HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                        })
                           
                       //quiz card
                       HomeViewRow(image: module.quiz.image, title: "\(module.category) Test", description: module.quiz
                            .description, count: "\(module.quiz.questions.count) questions", time: module.quiz.time)
                                    
                       }//end of vstack
                                    
            }//end of foreach
            }//lazyVStack
            .accentColor(.black)
            .padding()
        }//scrollview
            }//vstack
            .navigationTitle("Get Started")
            //to indent the whole file, you would do Ctrl+A, structure, reindent
        }//navview
    }//var body
}//struct end

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
