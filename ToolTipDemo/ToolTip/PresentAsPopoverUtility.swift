//
//  PresentAsPopoverUtility.swift
//  MaxBupa
//
//  Created by Bhavesh on 05/01/22.
//  Copyright © 2022 AppStudioz. All rights reserved.
//

import UIKit

class PresentAsPopoverUtility : NSObject, UIPopoverPresentationControllerDelegate {

    private static let shared = PresentAsPopoverUtility()

    private override init() {
        super.init()
    }

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

    static func configurePresentation(forController controller : UIViewController) -> UIPopoverPresentationController {
        controller.modalPresentationStyle = .popover
        let presentationController = controller.presentationController as! UIPopoverPresentationController
        presentationController.delegate = PresentAsPopoverUtility.shared
        return presentationController
    }
}
