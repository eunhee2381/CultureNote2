//
//  PerformsAddEditViewController.swift
//

import UIKit

class PerformsAddEditViewController: UIViewController {

    @IBOutlet weak var performGenreTextField: UITextField!
    @IBOutlet weak var performTitleTextField: UITextField!
    @IBOutlet weak var performDatePicker: UIDatePicker!
    @IBOutlet weak var performTheaterTextField: UITextField!
    @IBOutlet weak var performSeatTextField: UITextField!
    @IBOutlet weak var performPriceTextField: UITextField!
    @IBOutlet weak var performReviewTextView: UITextView!
    
    @IBOutlet weak var performPosterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func performPosterButton(_ sender: UIButton) {
        
    }
    
    @IBAction func savingPerform(_ sender: UIBarButtonItem) {
        
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
