//
//  RoutingSource.swift
//  LeafRouter
//
//  Created by roni on 2021/7/2.
//

import Foundation
import UIKit

public protocol RoutingSource: AnyObject { }

public typealias RoutingSourceProvider = () -> RoutingSource?

extension UIViewController: RoutingSource { }
