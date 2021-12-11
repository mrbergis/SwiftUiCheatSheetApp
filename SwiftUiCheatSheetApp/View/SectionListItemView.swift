//
//  SectionListItemView.swift
//  SwiftUiCheatSheetApp
//
//  Created by Андрей Адельбергис on 11.12.2021.
//

import SwiftUI

struct SectionListItemView: View {
    // MARK: - PROPERTIES
    
    let section: Section
    
    var body: some View {
        Text(section.name)
    }
}

struct SectionListItemView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
