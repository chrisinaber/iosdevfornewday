//
//  ContentView.swift
//  Animal4
//
//  Created by Chris Price on 29/01/2022.
//

import SwiftUI

var categories = ["Dogs", "Cats", "Rabbits" ]

var categoryItems = [ [ "Collie", "Labrador", "Dalmation", "Doberman", "Afghan"],
                      [ "Siamese", "Manx", "Persian"],
                      [  "Dutch", "Chinchilla", "Lionhead"]]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<categories.count){catIndex in
                    Section(header: Text("\(categories[catIndex])")) {
                        ForEach(0..<categoryItems[catIndex].count) {itemIndex in
                            RowView(breed: categoryItems[catIndex][itemIndex])
                        }
                    }
                }
            } .navigationTitle( "Choose a pet" )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            ContentView().preferredColorScheme($0)
        }
    }
}


struct RowView: View {
    let breed: String
    var body: some View {
        NavigationLink(destination: {
            if breed == "Siamese" { Text("I don't like Siamese")}
            else {
                SecondView(breed: breed) }
        }, label: {
            HStack {
                ZStack {
                    Color.black
                        .frame(width: 105, height: 65, alignment: .leading)
                    Image(breed)
                        .resizable()
                        .frame(width: 100, height: 60, alignment: .leading)
                }
                Text(breed)
            }
        })
    }
}
