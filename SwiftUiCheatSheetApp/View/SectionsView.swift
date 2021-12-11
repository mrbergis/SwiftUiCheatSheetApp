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
            Group {
                if !sectionsVM.isGridViewActive {
                    List {
                        ForEach(sectionsVM.sections) { section in
                            NavigationLink {
                                SectionDetailView(section: section)
                            } label: {
                                SectionListItemView(section: section)
                            }
                
                        } //: LOOP
                        .listRowBackground(Color.clear)
                    } //: LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: sectionsVM.gridLayout, alignment: .center, spacing: 10) {
                            ForEach(sectionsVM.sections) { section in
                                NavigationLink {
                                    SectionDetailView(section: section)
                                } label: {
                                    SectionGridItemView(section: section)
                                } //: LINK
                            } //: LOOP
                        } //: GRID
                        .padding(10)
                        .animation(.easeIn, value: sectionsVM.gridLayout.count)
                    } //: SCROLL
                } //: CONDITTION
            } //: GROUP
            .navigationTitle("SwiftUI")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        // LIST
                        Button(action: {
                            print("List view is activated")
                            sectionsVM.isGridViewActive = false // ???: Так можно в MVVM?
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(sectionsVM.isGridViewActive ? .primary : .accentColor)
                        }
                        // GRID
                        Button(action: {
                            print("Grid view is activated")
                            // LINK:
                            sectionsVM.isGridViewActive = true // ???: Так можно в MVVM?
                            sectionsVM.gridSwitch()
                        }) {
                            Image(systemName: sectionsVM.toolbarIcon)
                                .font(.title2)
                                .foregroundColor(sectionsVM.isGridViewActive ? .accentColor : .primary)
                        }
                    } //: HSTACK
                } //: BUTTONS
            } //: TOOLBAR
        } //: NAVIGATION
    }
}

//: MARK: - FUNCTIONS

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView()
    }
}
