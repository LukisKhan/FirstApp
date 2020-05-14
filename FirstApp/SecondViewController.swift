//
//  SecondViewController.swift
//  FirstApp
//
//  Created by Rave BizzDev on 5/14/20.
//  Copyright © 2020 Luat Pham. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(document)
        setupDocument()
        // Do any additional setup after loading the view.
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        view.addSubview(label)
        
    }
    let document = CAShapeLayer()

    func setupDocument() {
        document.strokeColor = UIColor.red.cgColor
        document.fillColor = UIColor.yellow.cgColor
        let size = CGSize(width: 100, height: 120)
        let foldInset: CGFloat = 30

        let path = CGMutablePath()

        path.move(to: .zero)
        path.addLine(to: CGPoint(x:0, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: size.height))
        path.addLine(to: CGPoint(x: size.width, y: foldInset))
        path.addLine(to: CGPoint(x: size.width - foldInset, y: 0))
        path.addLine(to: .zero)

        path.move(to: CGPoint(x: size.width - foldInset, y: 0))
        path.addLine(to: CGPoint(x: size.width - foldInset, y: foldInset))
        path.addLine(to: CGPoint(x: size.width, y: foldInset))

        document.path = path
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
