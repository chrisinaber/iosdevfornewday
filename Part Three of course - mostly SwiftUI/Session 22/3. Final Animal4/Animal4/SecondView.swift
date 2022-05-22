//
//  SecondView.swift
//  Animal4
//
//  Created by Chris Price on 29/01/2022.
//

import SwiftUI

struct SecondView: View {
    let breed: String
    var body: some View {
        VStack {
            Image(breed)
                    .resizable()
                    .frame(width: 300, height: 240, alignment: .leading)
            Text(breed)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(breed: "Collie")
    }
}
