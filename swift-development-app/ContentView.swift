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
            Color.indigo.ignoresSafeArea(.all)
            VStack {
                Image(systemName: "person.crop.circle").resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                Text("Emiliano Diaz")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "phone")
                            .modifier(button())
                    }
                    Button(action: {
                        
                    }) {
                        Image(systemName: "message.fill")
                            .modifier(button())
                    }
                }
            }
        }
    }
}
struct button : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.blue)
            .clipShape(Circle())
            .foregroundColor(.white)
            .font(.largeTitle)
    }
}
struct regularDesign: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea(.all)
            HStack {
                Image(systemName: "person.crop.circle").resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                Text("Emiliano Diaz")
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
