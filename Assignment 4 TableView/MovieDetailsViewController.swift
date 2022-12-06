//
//  MovieDetailsViewController.swift
//  Assignment 4 TableView
//
//  Created by Karan Patel on 2022-12-05.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var MovieNameTextField: UITextField!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        MovieNameTextField.text = movie.moviename
        print(#function)

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        movie.moviename = MovieNameTextField.text ?? ""
        print(#function)

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
