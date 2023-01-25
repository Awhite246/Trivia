//
//  API Reader.swift
//  Trivia
//
//  Created by Alistair White on 1/25/23.
//

/*
 [
    {
        "category":"Music",
        "id":"625064eee12f6dec240bdfd8",
        "correctAnswer":"Carl Douglas",
        "incorrectAnswers":["Nena","Billy Ray Cyrus","The Verve"],
        "question":"'Kung Fu Fighting' was a one hit wonder in 1974 by which artist?",
        "tags":["songs","one_hit_wonders","music"],
        "type":"Multiple Choice",
        "difficulty":"hard",
        "regions":[],
        "isNiche":false
    }
 ]
 */

import Foundation
import SwiftUI

struct Question : Codable, Identifiable {
    var id = UUID()
    var category : String
    var correctAnswer : String
    var incorrectAnswers : [String]
    var question : String
    //let tags : [String]
    var type : String
    var difficulty : String
    //let regions : [String]
    //let isNiche : Bool
}

struct Response : Codable {
    var questions: [Question]
}
