//
//  Main.swift
//  Trivia
//
//  Created by Alistair White on 1/11/23.
//

import SwiftUI

//https://the-trivia-api.com/api/questions?limit=20
//https://the-trivia-api.com/api/questions?limit=20&difficulty=easy
struct Main: View {
    @State private var questions = [Question]()
    var body: some View {
        Text("Hello, World!")
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
