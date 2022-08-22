//
//  ViewController.swift
//  ListOfProducts
//
//  Created by Mindaugas Balakauskas on 21/08/2022.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate
{

    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        products = createMockProducts()
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }

    func createMockProducts()-> [Product] {
        
        let p1 = Product(productName:"Bananas", price:"£2.50", description:"FA banana is an elongated, edible fruit – botanically a berry[1][2] – produced by several kinds of large herbaceous flowering plants in the genus Musa.[3] In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert", imageName:"Bananas", isFav: false)
        
        let p2 = Product(productName:"Apples", price:"£1.50", description:"Fair Trade", imageName:"Apples", isFav: false)

        
        let p3 = Product(productName:"Kiwi", price:"£3.25", description:"Fair Trade", imageName:"Kiwi", isFav: false)

        
        let p4 = Product(productName:"Strawberries", price:"£1.95", description:"Fair Trade", imageName:"Strawberries", isFav: false)
        
    

       return [p1, p2, p3, p4]
    }
}

func updateProduct(isFav:Bool, index:Int){
    
}



extension ViewController: UITableViewDataSource {
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as? ProductTableViewCell
        
       
        var isFull: Bool
        
        if (cell?.favButton.tag == 1){
            isFull = true
        }
        else {
            isFull = false
        }
        
        if let product = products?[indexPath.row] {
            cell?.productNameLable.text = product.productName
            cell?.productPriceLable.text = product.price
            cell?.productDescriptionLable.text = product.description
            isFull = product.isFav
        
            if product.imageName.isEmpty {
                cell?.productImageView.image = UIImage(named: "default" )
            }else {
                cell?.productImageView.image = UIImage(named: product.imageName )
            }
            
        }
        
      
        
        
        return cell ?? UITableViewCell()
    }
}
