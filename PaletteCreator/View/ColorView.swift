//
//  ColorView.swift
//  PaletteCreator
//
//  Created by Dave Shu on 11/7/18.
//  Copyright © 2018 Dave Shu. All rights reserved.
//

import UIKit

@IBDesignable
class ColorView: UIView {
    @IBInspectable
    var paletteColor: UIColor = .gray {
        didSet {
            backgroundColor = paletteColor
        }
    }
    
    @IBInspectable
    var paletteIndex: Int = 0
}
