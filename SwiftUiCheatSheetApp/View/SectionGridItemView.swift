//
//  SectionGridItemView.swift
//  SwiftUiCheatSheetApp
//
//  Created by Андрей Адельбергис on 11.12.2021.
//

import SwiftUI

struct SectionGridItemView: View {
    // MARK: - PROPERTIES
    
    let section: Section
    
    var body: some View {
        Text(section.name)
    }
}

struct SectionGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
