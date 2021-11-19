//
//  InventoryItem.swift
//  Shelton
//
//  Created by Александр Иванов on 15.11.2021.
//

import UIKit

class InventoryItem: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var type: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("InventoryItemView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}
