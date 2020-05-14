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
        
// Rectangle //////////////////////////////////////////////////////////////
//        let shape = CAShapeLayer()
//        view.layer.addSublayer(shape)
//        shape.strokeColor = UIColor.white.cgColor
//        shape.fillColor = UIColor.blue.cgColor
//
//        let path = CGMutablePath()
//        path.addRoundedRect(in: view.bounds, cornerWidth: 20, cornerHeight: 20)
//        shape.path = path
//
//        path.addEllipse(in: view.bounds)
//        shape.path = path
//
//        path.addRect(view.bounds, transform: .init(scaleX: 0.5, y: 0.5))
//        shape.path = path
        
        
// Document //////////////////////////////////////////////////////////////
//        let document = CAShapeLayer()
//        view.layer.addSublayer(document)
//        document.strokeColor = UIColor.red.cgColor
//        document.fillColor = UIColor.blue.cgColor
//        let size = CGSize(width: 100, height: 120)
//        let foldInset: CGFloat = 30
//
//        let path = CGMutablePath()
//
//        path.move(to: .zero)
//        path.addLine(to: CGPoint(x:0, y: size.height))
//        path.addLine(to: CGPoint(x: size.width, y: size.height))
//        path.addLine(to: CGPoint(x: size.width, y: foldInset))
//        path.addLine(to: CGPoint(x: size.width - foldInset, y: 0))
//        path.addLine(to: .zero)
//
//        path.move(to: CGPoint(x: size.width - foldInset, y: 0))
//        path.addLine(to: CGPoint(x: size.width - foldInset, y: foldInset))
//        path.addLine(to: CGPoint(x: size.width, y: foldInset))
//
//        document.path = path
        
        
// Replicator //////////////////////////////////////////////////////////////
//        let replicator = CAReplicatorLayer()
//        view.layer.addSublayer(replicator)
//        replicator.instanceCount = 3
//
//        let square = CALayer()
//        square.frame.size = CGSize(width: 30, height: 30)
//        square.backgroundColor = UIColor.blue.cgColor
//
//        replicator.addSublayer(square)
//
//        replicator.instanceTransform = CATransform3DMakeTranslation(50, 0, 0)
//
//        replicator.instanceBlueOffset = -0.3
//
        
// Loading Shape //////////////////////////////////////////////////////////////
//        let shape = CAShapeLayer()
//
//        shape.frame.size = CGSize(width: 10, height: 50)
//        shape.anchorPoint = CGPoint(x: 0.5, y: 1)
//
//        shape.path = CGPath(ellipseIn: shape.frame, transform: nil)
//        shape.fillColor = UIColor.blue.cgColor
//
//        let replicator = CAReplicatorLayer()
//        view.layer.addSublayer(replicator)
//        replicator.instanceCount = 20
//
//        let fullCircle = CGFloat.pi * 2
//        let angle = fullCircle / CGFloat(replicator.instanceCount)
//
//        replicator.instanceTransform = CATransform3DMakeRotation(angle, 0, 0, 1)
//
//        replicator.bounds.size = CGSize(width: shape.frame.height * .pi, height: shape.frame.height)
//
//        replicator.addSublayer(shape)
        
        
// Masking //////////////////////////////////////////////////////////////
        
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
//            UIColor(red: 0.04, green: 0.13, blue: 0.54, alpha: 1).cgColor,
//            UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor,
//            UIColor(red: 0.85, green: 0.25, blue: 0.25, alpha: 1).cgColor,
//        ]
//
//        gradient.mask = mask
        
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

}

