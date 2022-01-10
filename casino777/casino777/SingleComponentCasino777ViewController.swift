
import UIKit

class SingleComponentCasino777ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    func pickerView (_ _pickerView: UIPickerView,
                     numberOfRowsInComponent component: Int) -> Int {
    return characterNames .count
    }
    func pickerView (_pickerView: UIPickerView, titleForRow row: Int,
    forComponent component: Int) -> String? {
        return characterNames[row]
    }

    
    
    @IBAction func onButtonPressed(_ sender: Any) {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected\(selected)!"
        let alert = UIAlertController(
            title: title,
            message:"Thank you for choosing",
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "You are welcome",
            style: .default,
            handler: nil)
        alert.addAction(action)
present(alert, animated: true, completion: nil)
        }
    @IBOutlet weak var singlePicker: UIPickerView!
    }
    
    private let characterNames = ["Luke" , "Leia" , "Han" , "Chewbacca" , "Artoo" , "Threepio", "Lando"]
    

