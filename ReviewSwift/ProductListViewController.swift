//
//  TableViewController.swift
//  ReviewSwift
//
//  Created by Ledung95d on 10/14/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class ProductListViewController: UITableViewController {
    
   
    var viewModel: ProductListViewModelProtocol! {
        didSet {
            self.viewModel.productsDidChange = { [unowned self] viewModel in
                self.tableView.dataSource = self.viewModel.productListDataSource
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         viewModel.showProductList()
    }
}
