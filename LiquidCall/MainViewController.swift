//
//  MainViewController.swift
//  LiquidCall
//
//  Created by Takemi Watanuki on 2015/04/02.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//


import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    
    
    
    @IBOutlet var tableView: UITableView?
    
    struct Recipe {
//        let name: String
//        let thumbnails: String
//        let prepTime: String
        let topCall: String
        let mainCall: String
        let meaning: String
        let sound: String
        
    }
    var recipes = [Recipe]()
    
    
//    var filePath = NSBundle.mainBundle().pathForResource("mongonplist.plist", ofType:nil )
//    var dic = NSDictionary(contentsOfFile:filePath!)
    
    
    /*
    // プロパティファイルをバインド
    let path = NSBundle.mainBundle().pathForResource("mongonplist", ofType: "plist")
    
    // NSDictionaryに取り込み！
    let dict = NSDictionary ( contentsOfFile : path )
    
    // キー"AAA"の中身はarrayなのでNSArrayで取得
    let arr:NSArray = dict.objectForKey("AAA") as NSArray
    
    // arrayで取れた分だけループ
    for value in arr {
    // またNSDictionaryなので、キーを指定してデータを取得
    var i:Int = value.objectForKey("data1") as Int
    var j:Int = value.objectForKey("data2") as Int
    println("\(i) + \(j) = ?")
    }
    
    */
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "飲み会コール帳"
        
        
        initializeTheRecipes()
        //コールなどをplistから読み込んでくるようにする
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //    -(void)setPandaAnimation:(int)animationnumber{
    //    NSArray *arr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"animations" ofType:@"plist"]];
    //    prefix      =    arr [animationnumber][@"prefix"];
    //    wakeStart   =   [arr [animationnumber][@"wakeStart"] intValue];
    //    wakeEnd     =   [arr [animationnumber][@"wakeEnd"]  intValue];
    //    loopStart   =   [arr [animationnumber][@"loopStart"]intValue];
    //    loopEnd     =   [arr [animationnumber][@"loopEnd"]  intValue];
    //    actStart    =   [arr [animationnumber][@"actStart"] intValue];
    //    actEnd      =   [arr [animationnumber][@"actEnd"]   intValue];
    //    endloopStart=   [arr [animationnumber][@"endloopStart"]   intValue];
    //    endloopEnd  =   [arr [animationnumber][@"endloopEnd"]   intValue];
    //    }
    
    
    func initializeTheRecipes() {
        
        
        self.recipes = [Recipe(topCall: "どうした", mainCall: "どうしたーたなかぁそんなもんじゃあねぇだろー　※repeat", meaning: "2杯目に使える。気持ちで表すと「1杯だけかよ、どうしたんだよ田中」をいみする。", sound: "test"),
            Recipe(topCall: "", mainCall: "", meaning: "", sound: ""),
            Recipe(topCall: "", mainCall: "", meaning: "", sound: ""),
            Recipe(topCall: "", mainCall: "", meaning: "", sound: ""),
            Recipe(topCall: "", mainCall: "", meaning: "", sound: ""),
            Recipe(topCall: "", mainCall: "", meaning: "", sound: ""),
            Recipe(topCall: "", mainCall: "", meaning: "", sound: ""),
            Recipe(topCall: "", mainCall: "", meaning: "", sound: ""),
            

            
        
        ]
        
        
//        self.recipes = [Recipe(name: "Egg Benedict", thumbnails: "egg_benedict.jpg", prepTime: "1 hour"),
//            Recipe(name: "Mushroom Risotto", thumbnails: "mushroom_risotto.jpg", prepTime: "30 min"),
//            Recipe(name: "Full Breakfast", thumbnails: "full_breakfast.jpg", prepTime: "25 min"),
//            Recipe(name: "Hamburger", thumbnails: "hamburger.jpg", prepTime: "15 min"),
//            Recipe(name: "Ham and Egg Sandwich", thumbnails: "ham_and_egg_sandwich.jpg", prepTime: "20 min"),
//            Recipe(name: "Creme Brelee", thumbnails: "creme_brelee.jpg", prepTime: "10 min"),
//            Recipe(name: "White Chocolate Donut", thumbnails: "white_chocolate_donut.jpg", prepTime: "1 hour"),
//            Recipe(name: "Starbucks Coffee", thumbnails: "starbucks_coffee.jpg", prepTime: "2 hour"),
//            Recipe(name: "Vegetable Curry", thumbnails: "vegetable_curry.jpg", prepTime: "50 min"),
//            Recipe(name: "Instant Noodle with Egg", thumbnails: "instant_noodle_with_egg.jpg", prepTime: "65 min"),
//            Recipe(name: "Noodle with BBQ Pork", thumbnails: "noodle_with_bbq_pork.jpg", prepTime: "40 min"),
//            Recipe(name: "Japanese Noodle with Pork", thumbnails: "japanese_noodle_with_pork.jpg", prepTime: "30 min"),
//            Recipe(name: "Green Tea", thumbnails: "green_tea.jpg", prepTime: "25 min"),
//            Recipe(name: "Thai Shrimp Cake", thumbnails: "thai_shrimp_cake.jpg", prepTime: "1.5 hour"),
//            Recipe(name: "Angry Birds Cake", thumbnails: "angry_birds_cake.jpg", prepTime: "2 hour"),
//            Recipe(name: "Ham and Cheese Panini", thumbnails: "ham_and_cheese_panini.jpg", prepTime: "35 min")]
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier: String = "tableCell"
        
        var cell: TableViewCell? = tableView.dequeueReusableCellWithIdentifier(identifier) as? TableViewCell
        
        
        if cell == nil {
            cell = TableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier)
        }
        
        cell!.backgroundColor = UIColor.whiteColor()
        
        //        if var label = cell?.nameLabel{
        //            label.text = "This is a title"
        //        }
        
        
        cell?.nameLabel?.text = recipes[indexPath.row].topCall
        //        cell?.nameLabel!.text = recipes[indexPath.row].name
        //        cell!.thumbnailImageView!.image = UIImage(named:recipes[indexPath.row].thumbnails)
        //        cell!.prepTimeLabel!.text = recipes[indexPath.row].prepTime
        
        return cell!
    }
    
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 78.0
    }
    
    //    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    //
    //        recipes.removeAtIndex(indexPath.row)
    //
    //        tableView.reloadData()
    //
    //    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "recipeDetail" {
            let index = self.tableView?.indexPathForSelectedRow()
            var destinationViewController: ViewController = segue.destinationViewController as ViewController
            
            destinationViewController.prepString = recipes[index!.row].meaning
            destinationViewController.nameString = recipes[index!.row].topCall
            destinationViewController.imageName = recipes[index!.row].sound
            destinationViewController.allcallString = recipes[index!.row].mainCall
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        //        var cell: UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        //        if cell.accessoryType == UITableViewCellAccessoryType.Checkmark {
        //            cell.accessoryType = UITableViewCellAccessoryType.None
        //        } else {
        //            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        //        }
        //        //let alert: UIAlertView = UIAlertView(title: "Message", message: recipes[indexPath.row], delegate: nil, cancelButtonTitle: "OKAY")
        //        //alert.show()
    }
    
    
}
