//
//  ARBarChartBar.swift
//  ARCharts
//
//  Created by Christopher Chute on 7/25/17.
//  Copyright © 2017 Boris Emorine. All rights reserved.
//

import SceneKit
import UIKit

public class ARBarChartBar: SCNNode {
    public let series: Int
    public let index: Int
    public let value: Double
    // Need to save the final bar height for highlighting animations
    public let finalHeight: Float
    
    public override var description: String {
        return "ARBarNode(series: \(series), index: \(index), value: \(value))"
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init(geometry: SCNBox, index: Int, series: Int, value: Double, finalHeight: Float) {
        self.series = series
        self.index = index
        self.value = value
        self.finalHeight = finalHeight
        
        super.init()
        self.geometry = geometry
    }
    
}