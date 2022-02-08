//
//  ViewController+AlertController.swift
//  TheWeather
//
//  Created by Max Pavlov on 8.02.22.
//

import Foundation
import UIKit

extension ViewController {
    
    func presendSearchAlertController(withTitle title: String?, message: String?, style: UIAlertController.Style) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        alertController.addTextField { textField in
            let cities = ["Minsk", "Moscow", "New York", "Stambul", "San Francisco"]
            textField.placeholder = cities.randomElement()
        }
        
        let search = UIAlertAction(title: "Serch", style: .default) { action in
            let textField = alertController.textFields?.first
            guard let cityName = textField?.text else { return }
            if cityName != "" {
                print("Search info for the \(cityName)")
            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(search)
        alertController.addAction(cancel)
        present(alertController, animated: true, completion: nil)
    }
}
