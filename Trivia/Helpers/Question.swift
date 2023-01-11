//
//  Question.swift
//  Trivia
//
//  Created by Alistair White on 1/11/23.
//

import Foundation
import SwiftUI

struct Question : Codable, Identifiable {
    var id = UUID()
    var category : String
    var correctAnswer : String
    var incorrectAnswers : [String]
    var question : String
    var tags : [String]
    var type : String
    var difficulty : String
    var regions : [String]
    var isNiche : Bool
}
