//
//  AddPost.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 10.04.2023.
//

import SwiftUI

struct AddPost: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject var alertViewModel: AlertViewModel
    @State var title: String = ""
    @State var description: String = ""
    @State var emoji: String = ""
   
    var body: some View {
        Form{
            TextField("Title", text: $title)
            TextField("Description", text: $description)
            TextField("Emoji", text: $emoji)
        }.navigationBarItems(trailing: Button(action: {
            if title.isEmpty{
                self.alertViewModel.showAlert(title: "", description: "")
            }else{
                addItem()
                presentationMode.wrappedValue.dismiss()
            }
          
            
        }, label: {
            Image(systemName: "plus.square")
        }).alert(isPresented: $alertViewModel.showAlert) {
            Alert(title: Text(""), message: Text(""), dismissButton: .default(Text("dsadsa")))
        }
        
        
        ).navigationTitle("Add Post")
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.title = title
            newItem.detail = description
            newItem.emoji = emoji
           
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
