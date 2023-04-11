//
//  AlertViewModel.swift
//  DiaryPublic
//
//  Created by İbrahim Aktaş on 11.04.2023.
//

import Foundation


class AlertViewModel: ObservableObject{
    @Published var showAlert = false
    @Published var title = ""
    @Published var description = ""
    
    func showAlert(title: String, description: String) {
        self.title = title
        self.description = description
        self.showAlert = true
    }
}
