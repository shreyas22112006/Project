//
//  Item.swift
//  War Card Game
//
//  Created by Shreyas Karbar on 29/06/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
