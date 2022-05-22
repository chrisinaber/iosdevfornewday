//
//  SpeakerEntryForm.swift
//  SpeakerMaker
//
//  Created by Chris Price on 29/01/2022.
//

import SwiftUI

struct SpeakerEntryForm: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var name = ""
    @State private var biography = ""
    @State private var twitter = ""
    @State private var errorMessage = ""
    var body: some View {
        Form {
            HStack{
                Text("Name:")
                Spacer()
                TextField("Name", text: self.$name).frame(width: 150, alignment: .trailing).autocapitalization(.none)
                    .disableAutocorrection(true)
            }
            HStack{
                Text("Biography:")
                Spacer()
                TextField("Biography", text: self.$biography).frame(width: 150, alignment: .trailing).autocapitalization(.none)
                    .disableAutocorrection(true)
            }
            HStack{
                Text("Twitter:")
                Spacer()
                TextField("Twitter", text: self.$twitter).frame(width: 150, alignment: .trailing).autocapitalization(.none)
                    .disableAutocorrection(true)
            }
           Button("Save Speaker Details") {
                errorMessage = viewModel.validateSpeaker(name: name, biography: biography, twitter: twitter)
               if errorMessage == "" {
                   name = ""
                   biography = ""
                   twitter = ""
               }
            }
            if errorMessage.count > 0
                              {Text(errorMessage).foregroundColor(.red)}

        }
        .navigationTitle( "Add Speaker")
    }
}

struct SpeakerEntryForm_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerEntryForm()
    }
}
