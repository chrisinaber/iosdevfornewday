//
//  ContentView.swift
//  PropertyWrapperExample
//
//  Created by Chris Price on 30/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var negName = ""
    var body: some View {
        VStack{
            HStack{
                Text( "Name: ")
                TextField("name", text: $name )
                .frame(width:60)
            }
            Text( "Your name is \(name)")
            Button("Neg it", action: {
                @Negative var notName: String
                notName = name
                negName = notName
            })
            Text(negName)
        }

    }
}

@propertyWrapper struct Negative {
    private var value = ""
    var wrappedValue: String {
        get { return "NOT \(value)"}
        set { value = newValue}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
