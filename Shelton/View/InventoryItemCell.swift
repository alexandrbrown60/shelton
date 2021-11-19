//
//  InventoryItemCell.swift
//  Shelton
//
//  Created by Александр Иванов on 17.11.2021.
//

import UIKit

class InventoryItemCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var itemName: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
