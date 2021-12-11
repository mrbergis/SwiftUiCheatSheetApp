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
            .foregroundColor(.accentColor)
            .frame(maxWidth: .infinity,minHeight: 100, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.accentColor)
            )
    }
}

struct SectionGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SectionsView()
                .preferredColorScheme(.light)
            SectionsView()
                .preferredColorScheme(.dark)

        }
    }
}
