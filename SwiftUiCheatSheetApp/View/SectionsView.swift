//
//  SectionsView.swift
//  SwiftUiCheatSheetApp
//
//  Created by Андрей Адельбергис on 11.12.2021.
//

import SwiftUI

struct SectionsView: View {
    //MARK: - PROPERTIES
    @ObservedObject var sectionsVM = SectionsViewModel()
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(sectionsVM.sections) { section in
                    NavigationLink {
                        //if section.section.isEmpty {
                            SectionDetailView(section: section)
                       // }
                    } label: {
                        if section.section != "" {
                            SectionListItemView(section: section)
                                .onTapGesture {
                                    sectionsVM.changeSection(section: section.section)
                                }
                        } else {
                            SectionListItemView(section: section)
                        }

                    }
                   
                } //: LOOP
                .listRowBackground(Color.clear)
            } //: LIST
            .navigationTitle("SwiftUI")
            .edgesIgnoringSafeArea(.top)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        sectionsVM.removeTranslition()
                    }, label: {
                        Image(systemName: "chevron.left.circle.fill")
                    }).opacity(sectionsVM.translitions.isEmpty ? 0 : 1)
                }
            }

        }//: NAVIGATION
    }
}

//: MARK: - PREVIEWS

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
