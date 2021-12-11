//
//  SectionModel.swift
//  SwiftUiCheatSheetApp
//
//  Created by Андрей Адельбергис on 11.12.2021.
//

import Foundation

struct Section: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
}
