//
//  LeafRouting.swift
//  LeafRouter
//
//  Created by roni on 2021/7/2.
//

import Foundation

protocol LeafRouting {
    func register(path: String, navigator: Navigating)
    func route(to url: URL?, from routingSource: RoutingSource?, using transitionType: TransitionType)
}
