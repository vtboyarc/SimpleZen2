//
//  ColorModel.swift
//  SimpleZen
//
//  Created by Adam Carter on 3/17/17.
//  Copyright © 2017 Adam Carter. All rights reserved.
//

import UIKit
import GameKit


struct ColorModel {
    let colors = [
        UIColor(red: 206/255.0, green: 183/255.0, blue: 149/255.0, alpha: 1.0),
        UIColor(red: 217/255.0, green: 91/255.0, blue: 67/255.0, alpha: 1.0),
        UIColor(red: 84/255.0, green: 36/255.0, blue: 55/255.0, alpha: 1.0),
        UIColor(red: 89/255.0, green: 79/255.0, blue: 79/255.0, alpha: 1.0),
        UIColor(red: 84/255.0, green: 121/255.0, blue: 128/255.0, alpha: 1.0),
        UIColor(red: 69/255.0, green: 173/255.0, blue: 168/255.0, alpha: 1.0),
        UIColor(red: 152/255.0, green: 121/255.0, blue: 119/255.0, alpha: 1.0),
        //added below new colors for version 1.2, 4 new
        UIColor(red: 71/255.0, green: 79/255.0, blue: 97/255.0, alpha: 1.0),
        UIColor(red: 185/255.0, green: 138/255.0, blue: 119/255.0, alpha: 1.0),
        UIColor(red: 65/255.0, green: 82/255.0, blue: 117/255.0, alpha: 1.0),
        UIColor(red: 111/255.0, green: 96/255.0, blue: 108/255.0, alpha: 1.0)
    ]
    
    func randomColor() -> UIColor {
        let randomNum = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNum]
    }
}
