//
//  MinimizableViewExample_MacOSUITestsLaunchTests.swift
//  MinimizableViewExample_MacOSUITests
//
//  Created by Dominik Butz on 16/2/2023.
//  Copyright © 2023 Duoyun. All rights reserved.
//

import XCTest

final class MinimizableViewExample_MacOSUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
