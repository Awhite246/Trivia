//
//  ContentView.swift
//  Trivia
//
//  Created by Alistair White on 1/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var questions = [Question]()
    
    var body: some View {
        VStack {
            Text("Hello World")
            List(questions) { question in
                VStack(alignment: .leading) {
                    Text(question.question)
                        .font(.headline).bold()
                    Text(question.correctAnswer)
                        .fontWeight(.semibold)
                    Text(question.difficulty)
                }
            }
        }
        .task {
            //await acknowlidges that it might go to sleep
            await loadData()
        }
    }
    //asyc lets function "go to sleep" which allows other code to keep running and doesn't freeze up program
    func loadData() async {
        //Step 1 Create a URL:
        guard let url = URL(string: "https://the-trivia-api.com/api/questions?limit=20") else {
            print ("Invalid URL")
            return
        }
        
        //Step 2 Read URl Stuff:
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            //Step 3 Decode JSON in data:
            
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                questions = decodedResponse.questions
            }
        } catch {
            print ("Invalid data")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
