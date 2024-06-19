//
//  BooksAddEditViewController.swift
//

import UIKit

class BooksAddEditViewController: UIViewController {

    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookPublishTextField: UITextField!
    @IBOutlet weak var bookStartDatePicker: UIDatePicker!
    @IBOutlet weak var bookEndDatePicker: UIDatePicker!
    @IBOutlet weak var bookReviewTextView: UITextView!
    @IBOutlet weak var bookImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bookImageButton(_ sender: UIButton) {
        
    }
    
    @IBAction func savingBook(_ sender: UIBarButtonItem) {
        
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
