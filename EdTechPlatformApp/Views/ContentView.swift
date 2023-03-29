//
//  ContentView.swift
//  EdTechPlatformApp
//
//  Created by Rajiv Mukherjee on 3/8/23.
//

import SwiftUI

struct ContentView: View {
    
    //var module: Module
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        
        ScrollView{
            LazyVStack{
                if model.currentModule != nil{
                    ForEach(0..<model.currentModule!.content.lessons.count){index in
                        
                        let lesson = model.currentModule!.content.lessons[index]
                        
                        ZStack(alignment: .leading){
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .frame(height:66)
                            
                            HStack(spacing: 30){
                                Text(String(index+1))
                                
                                VStack{
                                    Text(lesson.title)
                                        .bold()
                                    
                                    Text(lesson.duration)
                                }//end of vstack
                            }//end of hstack
                        }//end of ZStack
                    }//end of for each
                }//end of if
                
                
            }//end of vstack
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? " ")")
        }//end of scroll view
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
