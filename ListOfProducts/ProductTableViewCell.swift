//
//  ProductTableViewCell.swift
//  ListOfProducts
//
//  Created by Mindaugas Balakauskas on 22/08/2022.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productNameLable: UILabel!
    @IBOutlet weak var productPriceLable: UILabel!
    
    @IBOutlet weak var productDescriptionLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
