//
//  ViewController.swift
//  LeafRouter
//
//  Created by wanqingrongruo on 07/02/2021.
//  Copyright (c) 2021 wanqingrongruo. All rights reserved.
//

import UIKit
import LeafRouter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        LeafRouter.shared.register(path: "Detail", navigator: DetailNavitator())
        LeafRouter.shared.register(path: "Second", navigator: SecondNavitator())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showDetial(_ sender: UIButton) {
        LeafRouter.shared.route(to: URL(string: "www.leaf.com/Detail?title=detail")!, from: navigationController, using: .show)
    }

    @IBAction func showSecond(_ sender: UIButton) {
        LeafRouter.shared.route(to: URL(string: "www.leaf.com/Second")!, from: self, using: .present)
    }
}

