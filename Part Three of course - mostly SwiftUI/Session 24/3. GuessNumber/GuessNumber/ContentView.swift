//
//  ContentView.swift
//  GuessNumber
//
//  Created by Chris Price on 30/04/2022.
//

import SwiftUI

struct ContentView: View {
    let answer = Int.random(in: 1...1000)
    @State var guess = ""
    @State var result = ""
    var body: some View {

        VStack{
            Text("Guess a number")
                .padding()
            Text( result )
                    .foregroundColor(.red)
            HStack{
                Text( "Make a guess: ")
                TextField("", text: $guess )
                .frame(width:30)
                .keyboardType(.numberPad)
            }
            Button("Try it", action: {
                if let val = Int(guess) {
                    if val == answer {
                        result = "Huzzah - you got it right"
                    } else if val < answer {
                        result = "You guessed too low"
                        guess = ""
                    } else {
                        result = "You guessed too high"
                        guess = ""
                    }
                } else {
                    result = "Not a legal value"
                    guess = ""
                }

            })

        }
    }
}


