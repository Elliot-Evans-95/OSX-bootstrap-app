//
//  ContentView.swift
//  OSX-bootstrap-2
//
//  Created by Elliot Evans on 15/12/2020.
//

import SwiftUI

enum Tabs: Hashable {
    case welcome
    case installHomebrew
}

struct SecondContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView: View {

    var body: some View {
        ZStack(alignment: .bottom) {
            TabbedView()
            NavigationButtonsView()
        }

        NavigationView {
            NavigationLink(destination: SecondContentView()) {
                Text("Press on me")
            }.buttonStyle(PlainButtonStyle())
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
