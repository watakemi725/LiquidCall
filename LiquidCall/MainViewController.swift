//
//  MainViewController.swift
//  LiquidCall
//
//  Created by Takemi Watanuki on 2015/04/02.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//


import UIKit

// MARK: == GameData.plist Keys ==
let BedroomFloorKey = "BedroomFloor"
let BedroomWallKey = "BedroomWall"

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    // MARK: == Variables ==
    var bedroomFloorID: AnyObject = 101
    var bedroomWallID: AnyObject = 101
    
    
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
        
        self.view.backgroundColor = UIColor.yellowColor()
        
        tableView?.backgroundColor = UIColor.yellowColor()
        
        
        initializeTheRecipes()
        //コールなどをplistから読み込んでくるようにする
        
//        self.loadGameData()
        
    }
    
    
    
    func loadGameData() {
        
        
        //
        //        // getting path to GameData.plist
        //        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        //        let documentsDirectory = paths[0] as String
        //        let path = documentsDirectory.stringByAppendingPathComponent("mongonplist.plist")
        //        //        let path = NSBundle.mainBundle().pathForResource("mongonplist", ofType: "plist")
        //        //        let dict = NSDictionary(contentsOfFile: path!)!
        //
        //        let fileManager = NSFileManager.defaultManager()
        //
        //        //check if file exists
        //        if(!fileManager.fileExistsAtPath(path)) {
        //            // If it doesn't, copy it from the default file in the Bundle
        //            if let bundlePath = NSBundle.mainBundle().pathForResource("mongonplist", ofType: "plist") {
        //
        //                let resultDictionary = NSMutableDictionary(contentsOfFile: bundlePath)
        //                println("Bundle GameData.plist file is --> \(resultDictionary?.description)")
        //
        //                fileManager.copyItemAtPath(bundlePath, toPath: path, error: nil)
        //                println("copy")
        //            } else {
        //                println("GameData.plist not found. Please, make sure it is part of the bundle.")
        //            }
        //        } else {
        //            println("GameData.plist already exits at path.")
        //            // use this to delete file from documents directory
        //            //fileManager.removeItemAtPath(path, error: nil)
        //        }
        //
        //
        //
        //        //辞書配列を用意
        //        let resultDictionary = NSMutableDictionary(contentsOfFile: path)
        //
        //        println("Loaded GameData.plist file is --> \(resultDictionary?.description)")
        //        //二種類用意するのか??
        //        var myDict = NSDictionary(contentsOfFile: path)
        //
        //
        //        if let dict = myDict {
        //            //loading values
        //            bedroomFloorID = dict.objectForKey(BedroomFloorKey)!
        //            bedroomWallID = dict.objectForKey(BedroomWallKey)!
        //            //...
        //        } else {
        //            println("WARNING: Couldn't create dictionary from GameData.plist! Default values will be used!")
        //
        //        }
        
        
        
        
        
        //        var documentsDirectory = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString
        //        let path = NSBundle.mainBundle().pathForResource("Property", ofType: "plist")
        //        let dict = NSDictionary(contentsOfFile: path!)
        
        
        /*
        
        let path = NSBundle.mainBundle().pathForResource("mongonplist", ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: path!)
        
        if let value1: AnyObject = dictionary?.objectForKey("call") {
            println("value1 = \(value1)")
        }
        if let value2: AnyObject = dictionary?.objectForKey("Item 1")?.objectForKey("meaning") {
            println("value2 = \(value2)")
        }
        if let value3: AnyObject = dictionary?.objectForKey("Item 2")?.objectForKey("name") {
            println("value3 = \(value3)")
        }
        

        */
        
        //        let levelArray:AnyObject = dict.objectForKey("Root")!
        //
        //        if let nsArray:NSArray = levelArray as? NSArray{
        //
        //            var levelDict:AnyObject = nsArray[0] //currentLevel is an Int
        //
        //            //then finally I could get data from a dictionary in the array
        //            var currentTMXFile : String = levelDict["meaning"] as AnyObject? as String
        //            var currentSpeed : Float = levelDict["calltext"] as AnyObject? as Float
        //
        //            println("これはああああああああああああああああ\(currentSpeed)")
        //
        
        
        
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
            Recipe(topCall: "SOS", mainCall: "エスー、オー、エスー、オー、エスオーエスオー、ソソオ!ソソオ!", meaning: "お酒をこぼしたり、ゲームに間違えたときに使える、世代を超えても広く使われるコール", sound: ""),
            Recipe(topCall: "パッパラパッパ", mainCall: "パッパラパッパッパ、遊びじゃねんだよ、パッパラパッパッパ、そんなの水だよ", meaning: "裏打ちで,パ,をいれることが難しいコール。しっかりと練習を備えて頑張ろう。", sound: ""),
            Recipe(topCall: "呑みたい騒ぎたい", mainCall: "田中が呑みたい騒ぎたい、胃腸に関して プチョ ヘンズ アップ(put your hands up)、ハイのーんでのんでのんでプチョ ヘンズ アップ、ハイのーんでのんでのんでプチョ ヘンズ アップ※repeat", meaning: "胃腸に関してお手上げだ(put your hands up)あるいは盛り上がっていこう手を上げろという意味がある。正直知らない", sound: ""),
            Recipe(topCall: "まだまだいける", mainCall: "まだまだいける！パーリラッパリラパーリラ フーフー！パーリラッパリラパーリラ フーフー！※repeat", meaning: "呑み終わったところでさらに呑ませたいときに使える突発型。まわりが知っていればさらに盛り上がる。", sound: ""),
            Recipe(topCall: "いんちきー", mainCall: "インチキーインチキーインチキインチキ、カブト！クワガタ、クワガタ、クワガタ、カブト！気の蜜シュシュシュ、木の蜜シュシュ、", meaning: "ゲームに負けているのに知らんふりをしていたり、呑み残していたりと、いんちきな行為をしたときに使える。「あれ、インチキじゃね？」が開始の合図である", sound: ""),
            Recipe(topCall: "はーやくのめ", mainCall: "はーやく呑め！はーやく呑め！", meaning: "とりあえず早く呑め。言い訳してくる人に使えるコールである。", sound: ""),
            Recipe(topCall: "シュビドゥバドゥ", mainCall: "まだまだ呑みたいシュビドゥバドゥ、ハイっグーグーグー、のんでのんでのーんでのんでのんで、モッ!、のんでのんでのーんでのんでのんで、モッモッ! 、のんでのんでのーんでのんでのんで、モモモッ!、まだまだ〜", meaning: "とても長いコールだが、リピートも綺麗に出来るハイブリッドコールといってわるくないだろう。", sound: ""),
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
        
        cell?.backgroundColor = UIColor.yellowColor()
        
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
