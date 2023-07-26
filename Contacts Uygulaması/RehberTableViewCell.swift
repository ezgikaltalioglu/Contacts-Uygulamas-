//
//  RehberTableViewCell.swift
//  Contacts Uygulaması
//
//  Created by Ezgi Kaltalıoğlu on 26.07.2023.
//

import UIKit

class RehberTableViewCell: UITableViewCell {

    @IBOutlet weak var labelIsım: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
