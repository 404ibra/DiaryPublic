//
//  TabView.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 10.04.2023.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView {
                    ListScreen()
                        .tabItem {
                            Label("List", systemImage: "list.dash")
                        }

                    OtherScreen()
                        .tabItem {
                            Label("Other", systemImage: "square.and.pencil")
                        }
                }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
