//
//  AddPost.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 10.04.2023.
//

import SwiftUI

struct AddPost: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var title: String = ""
    @State var description: String = ""
   
    var body: some View {
        Form{
            TextField("Title", text: $title)
            TextField("Description", text: $description)
           // TextField("Description", text: $description)
        }.navigationBarItems(trailing: Button(action: {
       
            addItem()}, label: {
            Image(systemName: "plus.square")
        })).navigationTitle("Add Post")
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.title = title
            newItem.detail = description
           
            do {
                try viewContext.save()
                debugPrint("başarılı işlem")
            } catch {
               
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
}
	
struct AddPost_Previews: PreviewProvider {
    static var previews: some View {
        AddPost()
    }
}
