//
//  SectionDetailView.swift
//  SwiftUiCheatSheetApp
//
//  Created by Андрей Адельбергис on 11.12.2021.
//

import SwiftUI

struct SectionDetailView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    let section: Section
    
    // MARK: - BODY
    var body: some View {
        Text(section.name)
            .edgesIgnoringSafeArea(.top)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left.circle.fill")
            }) )
    }
}

struct SectionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
