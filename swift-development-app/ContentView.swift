//
//  ContentView.swift
//  swift-development-app
//
//  Created by Emiliano Diaz on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        Button(action: {
          show = true
        }) {
            Text("Login")
        }.alert(isPresented: $show, content: {
            Alert(title: Text("Titulo"), message: Text("Tu mensaje aqui"), dismissButton: .default(Text("Aceptar")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
