//
//  ToolTipVC.swift
//  MaxBupa
//
//  Created by Bhavesh on 05/01/22.
//  Copyright © 2021 AppStudioz. All rights reserved.
//

import UIKit


class ToolTipVC: UIViewController {
    
    @IBOutlet private weak var label: UILabel!
    var labelText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText
    }
    
}
