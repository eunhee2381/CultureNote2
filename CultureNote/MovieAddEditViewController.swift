//
//  MovieAddEditViewController.swift
//  Calander
//
//  Created by 남기윤 on 2024/06/17.
//

import UIKit

class MovieAddEditViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var movieDirectorTextField: UITextField!
    @IBOutlet weak var movieDatePicker: UIDatePicker!
    @IBOutlet weak var movieTheaterTextField: UITextField!
    @IBOutlet weak var movieSeatTextField: UITextField!
    @IBOutlet weak var movieRatingSlider: UISlider!
    @IBOutlet weak var movieReviewTextView: UITextView!
    @IBOutlet weak var moviePosterButton: UIButton!
    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(viewTapGesture)
        
    }

    @objc func dismissKeyboard(sender: UITapGestureRecognizer){
        
    }
    
}
