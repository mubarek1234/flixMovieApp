//
//  movieCell.swift
//  flixApp
//
//  Created by Mubarek Mussa on 1/29/20.
//  Copyright © 2020 eventFind. All rights reserved.
//

import UIKit

class movieCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieSynopsis: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
