//
//  ToolTipTextButton.swift
//  ToolTipDemo
//
//  Created by bhavesh on 10/01/22.
//

import UIKit

class ToolTipTextButton: UIViewController {

    @IBOutlet private weak var tooltipLabel: UILabel!
    @IBOutlet private weak var doneClicked: UIButton!

    var labelText: String?
    var doneClosure: (()->Void)?
    var buttonTitle: String = "done"

    override func viewDidLoad() {
        super.viewDidLoad()

        tooltipLabel.text = labelText
        doneClicked.setTitle(buttonTitle, for: [])
    }


    @IBAction func doneClicked(_ sender: UIButton) {
        doneClosure?()
        self.dismiss(animated: true, completion: nil)
    }

}
