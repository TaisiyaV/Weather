//
//  ViewController+alertController.swift
//  Weather
//
//  Created by tasya on 12.08.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

extension ViewController {
    
    func presentSearchAlertController(withtitle title: String?, message: String?, style: UIAlertController.Style) {
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: style)
        ac.addTextField { tf in
            let cities = ["Moscow", "New York", "Stambul", "Paris"]
            tf.placeholder = cities.randomElement()
        }
        
        let search = UIAlertAction(title: "Search", style: .default) { action in
            let textField = ac.textFields?.first
            guard let cityName = textField?.text else { return }
            if cityName != "" {
                print("search info for the \(cityName)")
            }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        ac.addAction(search)
        ac.addAction(cancel)
        present(ac, animated: true, completion: nil)
    }
}
