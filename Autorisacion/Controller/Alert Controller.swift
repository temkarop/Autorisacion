//
//  Alert Controller.swift
//  Autorisacion
//
//  Created by Артем Ропавка on 25.08.2021.
//

import UIKit

class UIHelpers {
    
    static func showAlert(withTitle title: String, message: String, buttonTitle: String, handler: ((UIAlertAction) -> Void)?) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: buttonTitle, style: .default, handler: handler)
        alertController.addAction(okAction)
        return alertController
    }
}
