
import UIKit

class DateCasino777ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let date = NSDate()
        datePicker.setDate(date as Date, animated: false)
        
    }
    
    @IBAction func onBbuttonPressed(_ sender: Any) {
        let date = datePicker.date
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(
            title: "Date and time selected",
            message: message,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Thats so true!",
            style: .default,
        handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}
