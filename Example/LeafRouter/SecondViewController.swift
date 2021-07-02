//
//  SecondViewController.swift
//  LeafRouter_Example
//
//  Created by roni on 2021/7/2.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import LeafRouter

class SecondNavitator: Navigating {
    func navigate(from viewController: UIViewController, using transitionType: TransitionType, parameters: [String : String]) {
        let secondVC = SecondViewController()
        navigate(to: secondVC, from: viewController, using: transitionType)
    }
}


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
    }
}
