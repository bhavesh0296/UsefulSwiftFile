//
//  ViewController.swift
//  ToolTipDemo
//
//  Created by bhavesh on 10/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showToolTipClicked(_ sender: UIButton) {
        showTooltip(sourceView: sender)
    }

    @IBAction func showToolTipTextButtonClicked(_ sender: UIButton) {
        showTooltipTextButton(sourceView: sender)
    }

    // this used ToolTipVC to present Tooltip you can used different Xib and files to show build your custom Views

    fileprivate func showTooltip(sourceView: UIView) {
        let toolTipVC = ToolTipVC(nibName: String(describing: ToolTipVC.self), bundle: nil)
        toolTipVC.preferredContentSize = CGSize(width: 180, height: 60)
        toolTipVC.labelText = "This is the Single Label Tooltip"
        let presentationController = PresentAsPopoverUtility.configurePresentation(forController: toolTipVC)
        presentationController.sourceView = sourceView
        presentationController.sourceRect = sourceView.bounds
        presentationController.permittedArrowDirections = [.up, .down]
        self.present(toolTipVC, animated: true)
    }

    fileprivate func showTooltipTextButton(sourceView: UIView) {
        let tooltipTextButtonVC = ToolTipTextButton(nibName: String(describing: ToolTipTextButton.self), bundle: nil)
        tooltipTextButtonVC.preferredContentSize = CGSize(width: 180, height: 160)
        tooltipTextButtonVC.labelText = "This is the Label with The done Button Message into The Popup that is showing into it"
        tooltipTextButtonVC.buttonTitle = "Clicked Here"
        tooltipTextButtonVC.doneClosure = {
            print("Done Button Closure called")
        }
        let presentationController = PresentAsPopoverUtility.configurePresentation(forController: tooltipTextButtonVC)
        presentationController.sourceView = sourceView
        presentationController.sourceRect = sourceView.bounds
        presentationController.permittedArrowDirections = [.up, .down]
        self.present(tooltipTextButtonVC, animated: true)
    }
}

