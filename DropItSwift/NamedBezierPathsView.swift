//
//  NamedBezierPathsView.swift
//  DropItSwift
//
//  Created by Braden Gray on 12/2/16.
//  Copyright © 2016 Graycode. All rights reserved.
//

import UIKit

class NamedBezierPathsView: UIView {

    var bezierPaths = [String: UIBezierPath]() { didSet { setNeedsDisplay() } }
    
    override func draw(_ rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
}
