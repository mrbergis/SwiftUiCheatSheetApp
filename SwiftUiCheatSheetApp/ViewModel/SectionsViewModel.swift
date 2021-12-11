//
//  SectionsViewModel.swift
//  SwiftUiCheatSheetApp
//
//  Created by Андрей Адельбергис on 11.12.2021.
//

import SwiftUI

final class SectionsViewModel: ObservableObject {
    // MARK: - PROPERTIES
    @Published var sections: [Section] = Bundle.main.decode("sections.json")
    @Published var translitions: [String] = []
    //: MARK: - FUNCTIONS
    
    
    func changeSection(section: String) {
        sections = Bundle.main.decode(section)
        addTranslition(section)
    }
    
    private func addTranslition(_ section: String) {
        translitions.append(section)
    }
    
    func removeTranslition() {
        if !translitions.isEmpty {
            translitions.removeLast()
        }
        sections = Bundle.main.decode(translitions.last ?? "sections.json")
    }
}
