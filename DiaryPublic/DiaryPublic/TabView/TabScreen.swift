//
//  TabView.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 10.04.2023.
//

import SwiftUI

struct TabScreen: View {
    @State var selection = CustomTabs.list
    
    var body: some View {
        TabView(selection: $selection) {
            ListScreen()
                .tabItem {
                    Label("List", systemImage: selection == CustomTabs.list ? "list.bullet.circle.fill" : "list.bullet")
                }.tag(CustomTabs.list
                )
            
            OtherScreen()
                .tabItem {
                    if selection == CustomTabs.other
                        
                    {
                        Label("Other", systemImage: "gear.circle.fill")
                    }else{Label("Other",systemImage: "gear")}
                        
                }.tag(CustomTabs.other)
        }.accentColor(.purple)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
