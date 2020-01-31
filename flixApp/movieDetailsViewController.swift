//
//  movieDetailsViewController.swift
//  flixApp
//
//  Created by Mubarek Mussa on 1/30/20.
//  Copyright © 2020 eventFind. All rights reserved.
//

import UIKit
import Alamofire

class movieDetailsViewController: UIViewController {
    var movie : [String:Any]!
    @IBOutlet weak var backDrop: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synoposisLabel: UILabel!
    override func viewDidLoad() {
        synoposisLabel.text = movie["overview"] as! String
        synoposisLabel.sizeToFit()
        titleLabel.text = movie["title"] as! String
        titleLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let imageUrl = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl+imageUrl)
        posterView.af_setImage(withURL: posterUrl!)
        
        let backDropUrl = "https://image.tmdb.org/t/p/w780"
        let backDropImageUrl = movie["backdrop_path"] as! String
        let dropImageUrl = URL(string: backDropUrl+backDropImageUrl)
        backDrop.af_setImage(withURL: dropImageUrl!)
        super.viewDidLoad()

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
