//
//  AddFabButton.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 10.04.2023.
//

import SwiftUI

struct AddFabButton: View {
    var body: some View {
        Text("+").font(.title).foregroundColor(.white).padding().background(.purple).mask(Circle())
    }
}

struct AddFabButton_Previews: PreviewProvider {
    static var previews: some View {
        AddFabButton()
    }
}
