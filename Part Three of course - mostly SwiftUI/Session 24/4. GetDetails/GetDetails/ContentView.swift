//
//  ContentView.swift
//  GetDetails
//
//  Created by Chris Price on 30/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var details = PersonalDetails(title: "Sir", firstName: "James", surname: "Jones", address: "12 High Street")
    var body: some View {
        NavigationView{
        VStack{
            Text("Your details")
                .padding()
            Text("\(details.title) \(details.firstName) \(details.surname)\n\(details.address)")
                .padding()
            NavigationLink(destination: ChangeDetails(details: $details)){
                    Text("Update")
            }
        }
        }
    }
}

struct ChangeDetails: View {
    @Binding var details: PersonalDetails
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



struct PersonalDetails {
    var title: String
    var firstName: String
    var surname: String
    var  address: String
}
