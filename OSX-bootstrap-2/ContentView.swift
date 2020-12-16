//
//  ContentView.swift
//  OSX-bootstrap-2
//
//  Created by Elliot Evans on 15/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var showFolders : Bool = false
    @State private var folderList : String = ""

    var body: some View {

        VStack(spacing: 10) {
            Text("G'day m'lady")
                    .font(.title)
                    .padding()

            Text("OSX Bootstrap!")
                    .font(.subheadline)
                    .padding()

            Spacer()
        }

        Button(action: {
            print(shell("ls -la"))

            folderList = shell("ls -la")
            showFolders = !showFolders
        }) {
            HStack {
                Image(systemName: "folder.fill")
                Text("View folders")
            }.padding(.top, 0)
        }

        ScrollView(.vertical, showsIndicators: false) {
            DisclosureGroup("", isExpanded: $showFolders) {
                Text(folderList)
            }.padding()

            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView().previewLayout(
//                .device
//        )
        ContentView()
    }
}
