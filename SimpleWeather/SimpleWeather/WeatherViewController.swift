//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by seobyeonggwan on 2022/07/29.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    
    let cities = ["Seoul", "Tokyo", "Los Angeles", "Sydney"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        cityLabel.text = cities.randomElement()
        weatherImageView.image = UIImage(systemName: weathers.randomElement()!)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10...30)
        
        temperatureLabel.text = "\(randomTemp)°"
        
        print("city changed")
    }
    
    
}
