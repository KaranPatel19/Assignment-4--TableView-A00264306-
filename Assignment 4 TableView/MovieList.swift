//
//  MovieList.swift
//  Assignment 4 TableView
//
//  Created by Karan Patel on 2022-12-05.
//

import Foundation

class MovieList{
    var allmovies = [Movie]()
    
    init(){
        var moviename = ["Eternals","Dune","No Time To Die","Last Night inSoho","Ron’s Done Wrong","Halloween Kills","Venom","Antlers","The Addams Family 2"]
        
        for _ in 1...31 {
            let movienameindex = Int.random(in: 0..<moviename.count)
            
            
            allmovies.append(Movie(moviename: moviename[movienameindex]))
        }
    }
    // Delete function
    func deleteMovie(index: Int){
        allmovies.remove(at: index)
    }
    // Move from one row to another
    func moveMovie(from fromIndex: Int, to toIndex: Int){
        let temp = allmovies[fromIndex]
        allmovies.remove(at: fromIndex)
        allmovies.insert(temp, at: toIndex)
    }
    //Adding another movie
    @discardableResult func addmovie(moviename: String) -> Movie{
        let movie = Movie(moviename: moviename)
        allmovies.append(movie)
        return movie
    }
}
