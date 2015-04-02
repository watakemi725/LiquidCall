//
//  ViewController.swift
//  LiquidCall
//
//  Created by Takemi Watanuki on 2015/03/20.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//
import Foundation
import UIKit

//detail みたいなかんじ

class ViewController: UIViewController {
    
    //りきっどコール
    //いつやるの

    @IBOutlet var imageView: UIImageView?
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var prepTime: UILabel?
    
    var nameString: String?
    var prepString: String?
    var imageName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = nameString!
        
        imageView?.image = UIImage(named: imageName!)
        nameLabel?.text = nameString!
        prepTime?.text = prepString!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

