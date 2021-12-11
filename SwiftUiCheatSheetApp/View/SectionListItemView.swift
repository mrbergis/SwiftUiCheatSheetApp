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
        HStack(alignment: .center, spacing: 16)  {
            Text(section.name.prefix(1).uppercased())
                .font(.title2)
                .fontWeight(.bold)
                .frame(width: 80, height: 80, alignment: .center)
                .overlay(
                    Circle()
                        .stroke()
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(section.name)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(section.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .padding(.trailing, 8)
                    .foregroundColor(Color.secondary)
            } //: VSTACK
        } //: HSTACK
    }
}

struct SectionListItemView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
