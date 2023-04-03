import UIKit

class WeatherRollerViewController: UIViewController {
   
    //Model 정보
    let weather: [String] = ["cloud.sun" , "wind.snow.circle", "sunrise" ,  "cloud.drizzle.fill" ]
    
    //View
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var reloadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomWeather = weather.randomElement()!
        weatherImage.image = UIImage(systemName: randomWeather)
        weatherLabel.text = randomWeather
        
        setupButton()
        print("Yujin")
        
    }

    @IBAction func reloadButtonAction(_ sender: Any) {
        let randomWeather = weather.randomElement()!
        weatherImage.image = UIImage(systemName: randomWeather)
        weatherLabel.text = randomWeather
    }
    
    func setupButton() {
        reloadButton.layer.masksToBounds = true
        reloadButton.layer.cornerRadius = 50.0
        reloadButton.setTitle("Reload", for: .normal)
        
        
    }
    
}

