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
    
    @Published var isGridViewActive: Bool = false
    @Published var gridLayout: [GridItem] = [GridItem(.flexible())]
    @Published var gridColumn: Int = 1
    @Published var toolbarIcon: String = "square.grid.2x2"
    
    //: MARK: - FUNCTIONS
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print("Grid Number: \(gridColumn)")
        
        // TOOLBAR IMAGE
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
}
