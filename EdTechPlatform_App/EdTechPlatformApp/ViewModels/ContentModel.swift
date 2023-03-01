//
//  ContentModel.swift
//  EdTechPlatformApp
//
//  Created by admin on 2/27/23.
//

import Foundation

class ContentModel:ObservableObject
{
    @Published var modules = [Module]()//creating an instance so you need the () brackets next to the array of Modules
    init(){
        //init is for initialization code
        getLocalData()
    }
    
    //function getLocalData()
    func getLocalData()
    {
        //want to get the URL for the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")

        //want to read that file into the data objects
        //do-catch is similar to a try-catch --> basically will do it and if there is any error at all, the catch statement will catch it
        do{
            let jsonData = try Data(contentsOf: jsonUrl!) //exclamation mark is added as it will force the code to run anyways
            //decode this content into the data objects
            let jsonDecoder = JSONDecoder()
            
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assign the passed modules to module property
            self.modules = modules
        }
        catch{
            //log error
            print("Parsing the json file failed!")
        }
        
    }
}
