//
//  DetailViewController.swift
//  LeafRouter_Example
//
//  Created by roni on 2021/7/2.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import LeafRouter

class DetailNavitator: Navigating {
    func navigate(from viewController: UIViewController, using transitionType: TransitionType, parameters: [String : String]) {
        guard let navTitle = parameters["title"] else {
            return
        }

        let detailVC = DetailViewController(navtitle: navTitle)
        navigate(to: detailVC, from: viewController, using: transitionType)
    }
}

class DetailViewController: UIViewController {
    private var navtitle: String
    init(navtitle: String) {
        self.navtitle = navtitle
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        title = navtitle
    }
}
