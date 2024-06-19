//
//  ExhibitsAddEditViewController.swift
//

import UIKit

class ExhibitsAddEditViewController: UIViewController {

    
    @IBOutlet weak var exhibitTextField: UITextField!
    @IBOutlet weak var exhibitAuthorTextField: UITextField!
    @IBOutlet weak var exhibitHallTextField: UITextField!
    @IBOutlet weak var exhibitDatePicker: UIDatePicker!
    @IBOutlet weak var exhibitSlider: UISlider!
    @IBOutlet weak var exhibitReviewTextView: UITextView!
    @IBOutlet weak var exhibitImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func exhibitPosterButton(_ sender: UIButton) {
    }
    
    @IBAction func savingExhibit(_ sender: UIBarButtonItem) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
