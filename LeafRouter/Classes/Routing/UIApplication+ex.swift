//
//  UIApplication+ex.swift
//  LeafRouter
//
//  Created by roni on 2021/7/2.
//

import Foundation
import UIKit

public extension UIApplication {
    var rootViewController: UIViewController? {
        return keyWindow?.rootViewController
    }

    static var appVersion: String {
        // swiftlint:disable no_hardcoded_strings
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.0"
        // swiftlint:enable no_hardcoded_strings
    }

    var isRunningUnitTests: Bool {
        // swiftlint:disable no_hardcoded_strings
        return NSClassFromString("XCTestCase") != nil
        // swiftlint:enable no_hardcoded_strings
    }
}
