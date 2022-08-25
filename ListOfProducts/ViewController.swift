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
    var isFull: Bool?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        products = createMockProducts()
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
    }

    func createMockProducts()-> [Product] {
        
        let p1 = Product(productName:"Bananas", price:"£2.50", description:"FA banana is an elongated, edible fruit – botanically a berry[1][2] – produced by several kinds of large herbaceous flowering plants in the genus Musa.[3] In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert", imageName:"Bananas")
        
        let p2 = Product(productName:"Apples", price:"£1.50", description:"Fair Trade", imageName:"Apples")

        
        let p3 = Product(productName:"Kiwi", price:"£3.25", description:"Fair Trade", imageName:"Kiwi")

        
        let p4 = Product(productName:"Strawberries", price:"£1.95", description:"Fair Trade", imageName:"Strawberries")
        
        let p5 = Product(productName:"Parslip", price:"£1.95", description:"Fair Trade", imageName:"Strawberries")
        
        let p6 = Product(productName:"Tomatoes", price:"£1.95", description:"Fair Trade", imageName:"Strawberries")
        
        let p7 = Product(productName:"Apricot", price:"£1.95", description:"Fair Trade", imageName:"Strawberries")
        
        let p8 = Product(productName:"Blackberries", price:"£1.95", description:"Fair Trade", imageName:"Strawberries")
        
        let p9 = Product(productName:"Cheries", price:"£1.95", description:"Fair Trade", imageName:"Strawberries")
        
        let p10 = Product(productName:"Cucumbear", price:"£1.95", description:"Fair Trade", imageName:"Strawberries")

       return [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10]
        
    }
}





extension ViewController: UITableViewDataSource, FavoriteDelegate
{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as? ProductTableViewCell

        if let product = products?[indexPath.row] {
            cell?.productNameLable.text = product.productName
            cell?.productPriceLable.text = product.price
            cell?.productDescriptionLable.text = product.description
            
        
            if product.imageName.isEmpty {
                cell?.productImageView.image = UIImage(named: "default" )
            }else {
                cell?.productImageView.image = UIImage(named: product.imageName )
            }
            
        }
        
      return cell ?? UITableViewCell()
    }
   
    func didTapFav(state: Bool) {
     // not sure about the syntax, how to access products[] in product.isFav
    }
                
         
        
    }
    

