//
//  TipsPercent.swift
//  Tipsy
//
//  Created by Jeff Deng on 11/20/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct TipsPercent {
    private let tipsPercent: [String:Float] = [
        "0%"  : 1.0,
        "10%" : 1.1,
        "20%" : 1.2
    ]
    
    func getTipsPercent(key: String) -> Float {
        return tipsPercent[key] ?? Float(1.0)
    }
}
