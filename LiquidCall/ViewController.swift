//
//  ViewController.swift
//  LiquidCall
//
//  Created by Takemi Watanuki on 2015/03/20.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//
import Foundation
import UIKit
import AVFoundation

//detail みたいなかんじ

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    //りきっどコール
    //いつやるの

    @IBOutlet var imageView: UIImageView?
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var prepTime: UITextView?
    @IBOutlet var allcall: UITextView?
    @IBOutlet var myButton: UIButton! = UIButton()
    
    var audioPlayer:AVAudioPlayer!
    var sound_data :NSURL?
    
    var nameString: String?
    var prepString: String?
    var imageName: String?
    var allcallString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
       
        
        sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(imageName!, ofType: "wav")!)
        audioPlayer = AVAudioPlayer(contentsOfURL: sound_data, error: nil)
        
        //AVAudioPlayerのデリゲートをセット.
        audioPlayer.delegate = self
        
        audioPlayer.prepareToPlay()
        
        
//        navigationItem.title = nameString!
        
        imageView?.image = UIImage(named: imageName!)
        nameLabel?.text = nameString!
        prepTime?.text = prepString!
        allcall?.text = allcallString!
        
        myButton.setTitle("▶︎", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        myButton.backgroundColor = UIColor.cyanColor()
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: UIControlEvents.TouchUpInside)
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 50.0
        
    }
    
    @IBAction func play(){
        audioPlayer.play()

    }
    
    //ボタンがタップされた時に呼ばれるメソッド.
    func onClickMyButton(sender: UIButton) {
        
        //playingプロパティがtrueであれば音源再生中.
        if audioPlayer.playing == true {
            
            //myAudioPlayerを一時停止.
//            audioPlayer.pause()
            sender.setTitle("▶︎", forState: .Normal)
        } else {
            
            //myAudioPlayerの再生.
//            audioPlayer.play()
            sender.setTitle("■", forState: .Normal)
        }
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

