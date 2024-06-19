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
    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    var movie: Movie?
    var movieId: String?
    var moviesviewcontroller: MoviesViewController?
    
    
    var dbFirebase: DbFirebase?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(viewTapGesture)
        
        // 파이어베이스 연동
        dbFirebase = DbFirebase(parentNotification: manageDatabase)
        dbFirebase?.setQuery(from: 1, to: 10000)
        
    }
    

    @IBAction func moviePosterButton(_ sender: UIButton) {
        
    }
    
    @IBAction func SavingMovie(_ sender: UIBarButtonItem) {
        /*
         guard let title = movieTitleTextField.text, title.isEmpty == false else { return }
         guard let director = movieDirectorTextField.text, director.isEmpty == false else { return }
         let date = movieDatePicker.date
         guard let theater = movieTheaterTextField.text, theater.isEmpty == false else { return }
         guard let seat = movieSeatTextField.text, seat.isEmpty == false else { return }
         guard let review = movieReviewTextView.text, review.isEmpty == false else { return }
         let rating = Double(movieRatingSlider.value)
         let image = moviePosterImageView.image
         
         var id = moviesviewcontroller?.movies.count ?? 0 + 1000
         var imageName = title
         if let selectedMovie = movie {
         id = selectedMovie.id ?? id
         //                    imageName = selectedMovie.posterURL ?? title
         }
         
         let newMovie = Movie(id: id, title: title, director: director, date: date, theater: theater, seat: seat, rating: rating, review: review, posterURL: imageName)
         
         if let selectedMovie = movie {
         if id < 1011 {
         // DB에 추가
         if let index = moviesviewcontroller?.movies.firstIndex(where: { $0.id == selectedMovie.id }) {
         moviesviewcontroller?.movies[index] = newMovie
         }
         } else {
         // 수정
         let dict = try? Firestore.Encoder().encode(newMovie)
         if let dict = dict {
         moviesviewcontroller?.dbFirebase?.saveChange(key: String(id), object: dict, action: .modify)
         }
         }
         } else {
         // 신규 삽입
         let dict = try? Firestore.Encoder().encode(newMovie)
         if let dict = dict {
         movieCollectionViewController?.dbFirebase?.saveChange(key: String(id), object: dict, action: .add)
         }
         }
         
         if let image = image {
         movieCollectionViewController?.imagePool[imageName] = image
         movieCollectionViewController?.dbFirebase?.uploadImage(imageName: newMovie.posterURL ?? "", image: image)
         }
         
         // 초기화
         moviePosterImageView.image = nil
         movieTitleTextField.text = ""
         movieDirectorTextField.text = ""
         movieTheaterTextField.text = ""
         movieSeatTextField.text = ""
         movieReviewTextView.text = ""
         movie = nil
         
         */
    }
    
    func manageDatabase(dict: [String: Any]?, dbaction: DbAction?) {
        if dbaction == .add{
            let movie = Movie.fromDict(dict: dict!)
//            Movie.append(movie)
        }
//        MoviesViewController.movieTableView.reloadData() // 변경사항 반영
    }

    @objc func dismissKeyboard(sender: UITapGestureRecognizer){
        
    }
    
}
