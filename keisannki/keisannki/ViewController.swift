//
//  ViewController.swift
//  keisannki
//
//  Created by 工藤良 on 2015/05/10.
//  Copyright (c) 2015年 工藤良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //テキストの定義
    var text1 = "AC";
    var text2 = "+/-";
    var text3 = "%";
    var text4 = "÷";
    var text5 = "7";
    var text6 = "8";
    var text7 = "9";
    var text8 = "×";
    var text9 = "4";
    var text10 = "5";
    var text11 = "6";
    var text12 = "-";
    var text13 = "1";
    var text14 = "2";
    var text15 = "3";
    var text16 = "+";
    var text17 = "0";
    var text18 = ".";
    var text19 = "=";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ボタンを作成する
        let button1 = makeButton(text1,x:40,y:203.86);
        let button2 = makeButton(text2,x:120,y:203.86);
        let button3 = makeButton(text3,x:200,y:203.86);
        let button4 = makeButton(text4,x:280,y:203.86);
        let button5 = makeButton(text5,x:40,y:285);
        let button6 = makeButton(text6,x:120,y:285);
        let button7 = makeButton(text7,x:200,y:285);
        let button8 = makeButton(text8,x:280,y:285);
        let button9 = makeButton(text9,x:40,y:366.14);
        let button10 = makeButton(text10,x:120,y:366.14);
        let button11 = makeButton(text11,x:200,y:366.14);
        let button12 = makeButton(text12,x:280,y:366.14);
        let button13 = makeButton(text13,x:40,y:446.29);
        let button14 = makeButton(text14,x:120,y:446.29);
        let button15 = makeButton(text15,x:200,y:446.29);
        let button16 = makeButton(text16,x:280,y:446.29);
        let button17 = makeButton(text17,x:80,y:527.43);
        let button18 = makeButton(text18,x:200,y:527.43);
        let button19 = makeButton(text19,x:280,y:527.43);
        
        //背景色を変更する（濃い灰色）
        button1.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.7)
        button2.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.7)
        button3.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.7)
        
        //背景色を変更する（オレンジ）
        button4.backgroundColor = UIColor(red: 1.0, green: 0.35, blue: 0.2 , alpha: 0.7)
        button8.backgroundColor = UIColor(red: 1.0, green: 0.35, blue: 0.2 , alpha: 0.7)
        button12.backgroundColor = UIColor(red: 1.0, green: 0.35, blue: 0.2 , alpha: 0.7)
        button16.backgroundColor = UIColor(red: 1.0, green: 0.35, blue: 0.2 , alpha: 0.7)
        button19.backgroundColor = UIColor(red: 1.0, green: 0.35, blue: 0.2 , alpha: 0.7)
        
        //テキストの色を変更する（白）
        button4.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button8.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button12.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button16.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button19.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        //サイズを変更する
        button17.frame = CGRectMake(0, 0, 160, 81)
        //配置場所
        button17.layer.position = CGPoint(x:80, y:527.43)

        //viewにボタンを追加する
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        self.view.addSubview(button10)
        self.view.addSubview(button11)
        self.view.addSubview(button12)
        self.view.addSubview(button13)
        self.view.addSubview(button14)
        self.view.addSubview(button15)
        self.view.addSubview(button16)
        self.view.addSubview(button17)
        self.view.addSubview(button18)
        self.view.addSubview(button19)
        
    }
    
    func makeButton(text:String, x:CGFloat, y:CGFloat) -> UIButton{
            
            let button = UIButton()
            
            //表示されるテキスト
            button.setTitle(text, forState: .Normal)
            
            //テキストの色
            button.setTitleColor(UIColor.blackColor(), forState: .Normal)
            
            //タップした状態のテキスト
            button.setTitle(text, forState: .Highlighted)
            
            //タップした状態の色
            button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
            
            //サイズ
            button.frame = CGRectMake(0, 0, 80, 81)
            
            //配置場所
            button.layer.position = CGPoint(x:x, y:y)
            
            //背景色
            button.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
            
            //角丸
            button.layer.cornerRadius = 0
            
            //ボーダー幅
            button.layer.borderWidth = 2
            
            //ボタンをタップした時に実行するメソッドを指定
            button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
            
            return button
    }
    
    func tapped(button: UIButton) {
            NSLog("test");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

