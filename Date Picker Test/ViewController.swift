
import UIKit

class ViewController: UIViewController {

    let timeSelector: Selector = #selector(ViewController.update)
    let interval = 1.0
    var count = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var datepiker: UIDatePicker!
    @IBOutlet weak var time2Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func DatePiker(_ sender: UIDatePicker) {
        let datePikerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        timeLabel.text = formatter.string(from: datePikerView.date)
    }
    
    
    @objc func update() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        time2Label.text = formatter.string(from: date as Date)
        
        if timeLabel.text == time2Label.text {
            view.backgroundColor = UIColor.red
        }
    }

    
}



    

