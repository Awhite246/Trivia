//
//  Main.swift
//  Trivia
//
//  Created by Alistair White on 1/11/23.
//

import SwiftUI

struct Main: View {
    @State private var questions = [Question]()
    var body: some View {
        Text("Hello, World!")
    }
    func loadQuestions(difficulty : String = "", count : Int = 20) {
        questions.removeAll()
        
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
