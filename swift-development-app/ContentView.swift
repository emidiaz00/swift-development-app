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
        ZStack {
            Color.red.ignoresSafeArea(.all)
            HStack {
                Image("appstore").resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                Text("Hello World")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
