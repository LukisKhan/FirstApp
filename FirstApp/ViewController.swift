//
//  ViewController.swift
//  FirstApp
//
//  Created by Luat Pham on 5/13/20.
//  Copyright © 2020 Luat Pham. All rights reserved.
//

import UIKit

//Game Demo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(shape)
        view.layer.addSublayer(replicator)
        view.layer.addSublayer(loadingReplicator)
        setupRect()
        setupReplicator()
        setupLoadingShape()
//        setupMask()
    }
    
    let shape = CAShapeLayer()
 
    let replicator = CAReplicatorLayer()
    let loadingShape = CAShapeLayer()
    let loadingReplicator = CAReplicatorLayer()
 
// Rectangle //////////////////////////////////////////////////////////////
    func setupRect() {
        shape.strokeColor = UIColor.white.cgColor
        shape.fillColor = UIColor.blue.cgColor
        
        let startPoint = CGPoint(x: 200, y: 50)
        let rect = CGRect(x: startPoint.x, y: startPoint.y, width: 120, height: 150)
        let rectResize = CGRect(x: startPoint.x * 2, y: startPoint.y * 2, width: 120, height: 150)
        
        
        let path = CGMutablePath()
        path.addRoundedRect(in: rect, cornerWidth: 20, cornerHeight: 20)
        shape.path = path

        path.addEllipse(in: rect)
        shape.path = path

        path.addRect(rectResize, transform: .init(scaleX: 0.5, y: 0.5))
        shape.path = path
    }

// Document //////////////////////////////////////////////////////////////

        
        
// Replicator //////////////////////////////////////////////////////////////
    func setupReplicator() {
//        let startingPoint = CGPoint(x: 100, y: 100)
        replicator.instanceCount = 3

        let square = CAShapeLayer()
//        square.frame.size = CGSize(width: 30, height: 30)
        square.frame = CGRect(x: 100, y: 100, width: 30, height: 30)
        square.backgroundColor = UIColor.green.cgColor

        replicator.addSublayer(square)

        replicator.instanceTransform = CATransform3DMakeTranslation(50, 0, 0)

        replicator.instanceBlueOffset = -0.3
    }
//
        
// Loading Shape //////////////////////////////////////////////////////////////
//
    func setupLoadingShape() {

        loadingShape.frame.size = CGSize(width: 10, height: 50)
//        loadingShape.frame = CGRect(x: 50, y: 200, width: 10, height: 50)
        loadingShape.anchorPoint = CGPoint(x: 0.5, y: 1)

        loadingShape.path = CGPath(ellipseIn: loadingShape.frame, transform: nil)
        loadingShape.fillColor = UIColor.black.cgColor

        loadingReplicator.instanceCount = 20

        let fullCircle = CGFloat.pi * 2
        let angle = fullCircle / CGFloat(loadingReplicator.instanceCount)

        loadingReplicator.instanceTransform = CATransform3DMakeRotation(angle, 0, 0, 1)

        loadingReplicator.bounds.size = CGSize(width: (loadingShape.frame.height * .pi), height: loadingShape.frame.height)
//        loadingShape.transform = CATransform3DMakeTranslation(100, 200, 0)
        loadingReplicator.transform = CATransform3DMakeTranslation(180, 500, 0)
        loadingReplicator.addSublayer(loadingShape)
    }

        
        
// Masking //////////////////////////////////////////////////////////////
//Need icon file
//    func setupMask() {
//        let mask = CALayer()
//        let image = UIImage(named: "SwiftIcon")!
//
//        mask.contents = image.cgImage
//        mask.frame.size = image.size
//
//        let gradient = CAGradientLayer()
//        gradient.frame.size = image.size
//
//        gradient.colors = [
//        UIColor(red: 0.04, green: 0.13, blue: 0.54, alpha: 1).cgColor,
//        UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor,
//        UIColor(red: 0.85, green: 0.25, blue: 0.25, alpha: 1).cgColor,
//        ]
//
//        gradient.mask = mask
//    }

        
// More Masking //////////////////////////////////////////////////////////////
// Mask a shape, mask text, and mask a mask
//        let shape = CAShapeLayer()
//        image.mask = shape
//
//        let text = CATextLayer()
//        gradient.mask = text
//
//        let mask = CALayer()
//        mask.contents = saturnImage
//        image.mask = mask

}

