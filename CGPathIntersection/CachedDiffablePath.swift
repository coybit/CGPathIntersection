//
//  CGPath+FastIntersections.swift
//  CGPathIntersection
//
//  Created by Mohsen Alijanpour on 28/11/2018.
//  Copyright © 2018 Cal Stephens. All rights reserved.
//

import CoreGraphics

public class CachedDiffablePath {
    public var pathImage: CGPathImage
    
    public init(from path: CGPath) {
        pathImage = CGPathImage(from: path)
    }
    
    public func intersects(path: CachedDiffablePath) -> Bool {
        return !self.pathImage.intersectionPoints(with: path.pathImage).isEmpty
    }
    
    public func intersectionPoints(with path: CachedDiffablePath) -> [CGPoint] {
        return self.pathImage.intersectionPoints(with: path.pathImage)
    }
}
