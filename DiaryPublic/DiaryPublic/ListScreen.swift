//
//  ListScreen.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 10.04.2023.
//

import SwiftUI


struct ListScreen: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    @State var actionAddPost: Int? = 0
    var body: some View {
        
        
        ZStack(alignment: .bottomTrailing){
            
    
            
            NavigationStack{
                List{
                    NavigationLink(destination: AddPost(), tag: 1, selection: $actionAddPost){
                        EmptyView()
                    }
                    ForEach(items) { item in
                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")}
                }.navigationTitle("list_title")
            }
            
            
            Button {
                self.actionAddPost = 1
            } label: {
                AddFabButton().padding(24)
            }

            
        }
    }
            private let itemFormatter: DateFormatter = {
                let formatter = DateFormatter()
                formatter.dateStyle = .short
                formatter.timeStyle = .medium
                return formatter
            }()
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
