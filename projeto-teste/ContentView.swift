//
//  ContentView.swift
//  projeto-teste
//
//  Created by user on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Titulo")
            Text("Data")
        }
        Button{
            print("teste")
        } label: {
            Label {
                Text("Checkbox")
            } icon: {
                Image(systemName: "checkbox.square.fill")
            }
            .labelStyle(.iconOnly)
        }
    }
}

#Preview {
    ContentView()
}
