//
//  MoviesViewController.swift
//  Calander
//
//  Created by 남기윤 on 2024/06/17.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var movieTableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.title = "영화 목록"
        //movieTableView.delegate = self
        //movieTableView.dataSource = self
        
        movies.append(Movie(id: 1011, title: "인셉션", director: "크리스토퍼 놀란", date: Date(), theater: "CGV 용산 아이파크몰", seat: "A1", rating: 9.0, review: "훌륭한 영화!"))
        
        // Do any additional setup after loading the view.
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
