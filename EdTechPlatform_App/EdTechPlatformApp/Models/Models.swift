//
//  Models.swift
//  EdTechPlatformApp
//
//  Created by admin on 3/1/23.
//

import Foundation

struct Module: Decodable, Identifiable{
    var id: Int
    var category: String
    var content: Content//brackets makes it an array
    var quiz: Quiz
}

struct Content: Decodable, Identifiable{
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: [Lesson] //array so you must include the brackets
}

struct Lesson: Decodable, Identifiable{
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}

struct Quiz: Decodable, Identifiable{
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
}
// you are not trying to hard code json facts into the code
//instead, you are creating a structure through which details in the json file can fit in
struct Question: Decodable, Identifiable{
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}
