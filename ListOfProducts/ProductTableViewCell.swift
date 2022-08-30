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
    @IBOutlet weak var favoriteButton: UIButton!
    var productsIndex = 0
    var productViewDelegate: ProductView?
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func favButtonClicked(_ sender: Any) {
        let button = sender as? UIButton
               guard let button = button else {
                   return
               }
                   button.setImage(UIImage(named: "favIcon"), for: .normal)
               let favorite = productViewDelegate?.didTapFav(productIndex: productsIndex) ?? false
               let imageName = favorite ? "favIcon" : "notFavIcon"
               favoriteButton.setImage(UIImage(named: imageName), for: .normal)
    }
}
