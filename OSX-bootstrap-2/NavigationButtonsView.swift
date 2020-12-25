//
// Created by Elliot Evans on 25/12/2020.
//

import SwiftUI

struct NavigationButtonsView: View {
    @State private var selection: Int = 0

    var body: some View {
        HStack {
            Button("prev") {
                withAnimation {
                    selection = 0
                }
            }

            Button("next") {
                withAnimation {
                    selection = 1
                }
            }
        }
    }
}
