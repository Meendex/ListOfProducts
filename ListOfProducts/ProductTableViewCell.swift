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
    
    @IBOutlet weak var favButton: UIButton!
    /*  @IBAction func favButtonClicked(_ sender: Any)
    {
        
        let button = sender as! UIButton
        button.setImage(UIImage(named:"favIcon"), for: .normal)
        
    }
    */

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func favButtonClicked(_ sender: UIButton) {
        if favButton.tag == 0 {
            favButton.setImage(UIImage(named: "notFavIcon"), for: .normal)
            favButton.tag = 1
        }
        else {
            favButton.setImage(UIImage(named: "favIcon"), for: .normal)
            favButton.tag = 0
        }
    }
    
}
