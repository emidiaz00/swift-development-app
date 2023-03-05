//
//  ContentView.swift
//  swift-development-app
//
//  Created by Emiliano Diaz on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        if sizeClass == .compact {
            compactDesign()
        } else {
            regularDesign()
        }
    }
}

struct compactDesign: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(.all)
            VStack {
                Image("appstore").resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .clipShape(Circle())
                Text("Hello World")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

struct regularDesign: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea(.all)
            HStack {
                Image("appstore").resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .clipShape(Circle())
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
