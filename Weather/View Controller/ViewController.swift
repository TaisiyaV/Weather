//
//  ViewController.swift
//  Weather
//
//  Created by tasya on 12.08.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    @IBAction func searchPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withtitle: "Enter city name", message: nil, style: .alert)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

