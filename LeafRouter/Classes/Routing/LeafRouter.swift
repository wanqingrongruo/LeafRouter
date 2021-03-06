//
//  LeafRouter.swift
//  LeafRouter
//
//  Created by roni on 2021/7/2.
//

import Foundation

public final class LeafRouter: LeafRouting {
    public static let shared: LeafRouter = .init()

    private var navigators: [String: Navigating] = [:]

    private init() { }

    public func register(path: String, navigator: Navigating) {
        navigators[path.lowercased()] = navigator
    }

    public func route(to url: URL?, from routingSource: RoutingSource?, using transitionType: TransitionType = .present) {
        guard let url = url, let sourceViewController = routingSource as? UIViewController ?? UIApplication.shared.rootViewController else { return }

        let path = url.lastPathComponent.lowercased()
        guard let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false) else { return }
        let parameters: [String: String] = (urlComponents.queryItems ?? []).reduce(into: [:]) { params, queryItem in
            params[queryItem.name.lowercased()] = queryItem.value
        }
        navigators[path]?.navigate(from: sourceViewController, using: transitionType, parameters: parameters)
    }
}
