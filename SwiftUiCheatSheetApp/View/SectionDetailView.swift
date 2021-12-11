//
//  SectionDetailView.swift
//  SwiftUiCheatSheetApp
//
//  Created by Андрей Адельбергис on 11.12.2021.
//

import SwiftUI

struct SectionDetailView: View {
    // MARK: - PROPERTIES
    
    let section: Section
    
    // MARK: - BODY
    var body: some View {
        Text(section.name)
    }
}

struct SectionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
