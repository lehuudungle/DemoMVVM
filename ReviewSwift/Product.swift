//
//  Product.swift
//  ReviewSwift
//
//  Created by Ledung95d on 10/14/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import Foundation
import UIKit

struct Product {
    var name: String
    var price: Double
}



protocol ProductListViewModelProtocol: class {
    var products : [Product] { get }
    var productListDataSource: ProductListDataSource! { get set }
    var productsDidChange: ((ProductListViewModelProtocol) -> ())? { get set }
    init(products: [Product])
    func showProductList()
}


class ProductListViewModel: ProductListViewModelProtocol {
    private(set) var products: [Product]
    
    var productListDataSource: ProductListDataSource! {
        didSet {
            self.productsDidChange?(self)
        }
    }
    
    var productsDidChange: ((ProductListViewModelProtocol) -> ())?
    
    required init(products: [Product]) {
        self.products = products
    }
    
    func showProductList() {
        productListDataSource = ProductListDataSource(products: products)
    }
}


class ProductListDataSource: NSObject, UITableViewDataSource {
    
    var products: [Product]
    
    init(products: [Product]) {
        self.products = products
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        let product = products[indexPath.row]
        cell.textLabel?.text = product.name
        cell.detailTextLabel?.text = String(product.price)
        return cell
    }
}
