//
//  Navigating.swift
//  LeafRouter
//
//  Created by roni on 2021/7/2.
//

import Foundation
import UIKit

public protocol Navigating {
    func navigate(from viewController: UIViewController, using transitionType: TransitionType, parameters: [String: String])
}

public extension Navigating {
    func navigate(to destinationViewController: UIViewController, from sourceViewController: UIViewController, using transitionType: TransitionType) {
        switch transitionType {
        case .show:
            sourceViewController.show(destinationViewController, sender: nil)
        case .present:
            sourceViewController.present(destinationViewController, animated: true)
        }
    }
}
