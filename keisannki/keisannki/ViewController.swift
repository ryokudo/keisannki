//
//  ViewController.swift
//  keisannki
//
//  Created by 工藤良 on 2015/05/10.
//  Copyright (c) 2015年 工藤良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton()
        
        //表示されるテキスト
        button.setTitle("1", forState: .Normal)
        
        //テキストの色
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        //タップした状態のテキスト
        button.setTitle("1", forState: .Highlighted)
        
        //タップした状態の色
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button.frame = CGRectMake(0, 0, 50, 50)
        
        //配置場所
        button.layer.position = CGPoint(x:100, y:100)
        
        //背景色
        button.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        //角丸
        button.layer.cornerRadius = 0
        
        //ボーダー幅
        button.layer.borderWidth = 2
        
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        self.view.addSubview(button)
        
    }
    
    
    
    func tapped(button: UIButton) {
            NSLog("test");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

