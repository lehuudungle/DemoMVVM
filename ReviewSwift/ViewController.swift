//
//  ViewController.swift
//  ReviewSwift
//
//  Created by Ledung95d on 9/19/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    var name: String?
    private var light: String?
    
    @IBOutlet weak var pu: UIButton!
    
    lazy var makeName: String =  {
       return self.name!
    }()
    var getName: String {
        get{
            return self.name!
        }
    }
    
    
    var arr : NSMutableArray = ["Pencil", "Eraser", "Notebook"]
    var barr = ["Pencil", "Eraser", "Notebook"]
    var ans: NSArray = ["le", "dung", "le"]
    
    func foo (a : Array<String>)
    {
//        var a = a
//        a[2] = "Pen"
    }
    
    func bar (a : NSMutableArray)
    {
        a[2] = "Pen"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foo(a: barr)
        bar(a: arr)
        
        print(arr)
        print(barr)
        
        barr.append("le huu dung")
        print(barr)
       
        
        
    }
    
    @IBAction func push(_ sender: Any) {
        
    }
}

