//
//  ViewController.swift
//  demoUIFontPickerViewController
//
//  Created by MekeFactory on 2019/11/12.
//  Copyright © 2019 MekeFactory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButton(_ sender: Any) {
        let vc = UIFontPickerViewController()
        vc.delegate = self
        present(vc, animated: true)
    }
}

extension ViewController: UIFontPickerViewControllerDelegate {
    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
        guard let descriptor = viewController.selectedFontDescriptor else { return }
        textField.font = UIFont(descriptor: descriptor, size: 36)
    }
}
