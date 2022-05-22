//
//  ContentView.swift
//  GetDetails
//
//  Created by Chris Price on 30/04/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var details = PersonalDetails(title: "Sir", firstName: "James", surname: "Jones", address: "12 High Street")
    var body: some View {
        NavigationView{
        VStack{
            Text("Your details")
                .padding()
            Text("\(details.title) \(details.firstName) \(details.surname)\n\(details.address)")
                .padding()
            NavigationLink(destination: ChangeDetails(details: details)){
                    Text("Update")
            }
        }
        }
    }
}

struct ChangeDetails: View {
    @ObservedObject var details: PersonalDetails
    var body: some View {
        VStack{
        Group {
        Text("Use the back button to finish")
        TextField("First name", text: $details.firstName)
           .textFieldStyle(RoundedBorderTextFieldStyle())
       TextField("Surname", text: $details.surname)
       .textFieldStyle(RoundedBorderTextFieldStyle())
       }
       }
       .padding(.horizontal)
       .navigationTitle("Change Details")
    }
}



class PersonalDetails: ObservableObject {
    @Published var title: String
    @Published var firstName: String
    @Published var surname: String
    @Published var  address: String

    init( title: String, firstName: String, surname: String, address: String ) {
        self.title = title
        self.firstName = firstName
        self.surname = surname
        self.address = address
    }
}
