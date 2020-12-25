//
// Created by Elliot Evans on 25/12/2020.
//

import SwiftUI


struct WelcomeTab: View {
    @Binding var tabs: Tabs

    var body: some View {
        Text("Welcome")
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("Page 1")
                }
                .tag(Tabs.welcome)
    }
}

struct InstallHomebrewTab: View {
    @Binding var tabs: Tabs

    var body: some View {
        Text("Install Homebrew")
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("Page 2")
                }
                .tag(Tabs.installHomebrew)
    }
}

struct TabbedView: View {
    @State private var tabs: Tabs = .welcome

    var body: some View {
        TabView(selection: $tabs) {
            WelcomeTab(tabs: $tabs)
            InstallHomebrewTab(tabs: $tabs)
        }
    }

}
