
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    
    
    @IBOutlet weak var countLabel2: UILabel!
    var count2 = 0
    
    @IBOutlet weak var countLabel3: UILabel!
    var count3 = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = String(count)
        countLabel2.text = String(count2)
        countLabel3.text = String(count3)
     
    }

    @IBAction func plusPressed(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
    }
    
    @IBAction func plusPressed2(_ sender: Any) {
        count2 = count2 + 1
        countLabel2.text = String(count2)
    }
    
    @IBAction func plusPressed3(_ sender: Any) {
        count3 = count3 + 1
        countLabel3.text = String(count3)
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        count = 0
        count2 = 0
        count3 = 0
        countLabel.text = String(count)
         countLabel2.text = String(count2)
         countLabel3.text = String(count3)
    }
    
}

