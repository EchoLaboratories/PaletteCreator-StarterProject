//
//  Palette.swift
//  PaletteCreator
//
//  Created by Dave Shu on 11/4/18.
//  Copyright © 2018 Dave Shu. All rights reserved.
//

import UIKit

struct Palette: Equatable, CustomStringConvertible {
    static let colorCount = 5
    var name: String
    var colors: [UIColor] {
        willSet {
            assert(newValue.count == Palette.colorCount, "Palette must contain exactly \(Palette.colorCount) colors.")
        }
    }
    
    // MARK: Init
    init(name: String, colors: [UIColor]) {
        precondition(colors.count == Palette.colorCount, "Palette must contain exactly \(Palette.colorCount) colors.")
        self.name = name
        self.colors = colors
    }

    // MARK: CustomStringConvertible
    var description: String {
        return "<Palette '\(name)': \(colors.map { $0.rgbTriplet() })>"
    }
}
