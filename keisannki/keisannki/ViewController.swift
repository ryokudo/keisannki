//
//  ViewController.swift
//  keisannki
//
//  Created by 工藤良 on 2015/05/10.
//  Copyright (c) 2015年 工藤良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var text1 = "1";
    var text2 = "2";
    var text3 = "3";
    var text4 = "4";
    var text5 = "5";
    var text6 = "6";
    var text7 = "7";
    var text8 = "8";
    var text9 = "9";
    var text10 = "0";
    var text11 = ".";
    var text12 = "AC";
    var text13 = "+/-";
    var text14 = "%";
    var text15 = "÷";
    var text16 = "×";
    var text17 = "-";
    var text18 = "+";
    var text19 = "=";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button1 = makeButton(text1,x:50,y:50);
        let button2 = makeButton(text2,x:100,y:50);
        let button3 = makeButton(text3,x:150,y:50);
        let button4 = makeButton(text4,x:200,y:50);
        let button5 = makeButton(text5,x:50,y:100);
        let button6 = makeButton(text6,x:100,y:100);
        let button7 = makeButton(text7,x:150,y:100);
        let button8 = makeButton(text8,x:200,y:100);
        let button9 = makeButton(text9,x:50,y:150);
        let button10 = makeButton(text10,x:100,y:150);
        let button11 = makeButton(text11,x:150,y:150);
        let button12 = makeButton(text12,x:200,y:150);
        let button13 = makeButton(text13,x:50,y:200);
        let button14 = makeButton(text14,x:100,y:200);
        let button15 = makeButton(text15,x:150,y:200);
        let button16 = makeButton(text16,x:200,y:200);
        let button17 = makeButton(text17,x:50,y:250);
        let button18 = makeButton(text18,x:100,y:250);
        let button19 = makeButton(text19,x:150,y:250);

        

        
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
            button.frame = CGRectMake(0, 0, 50, 50)
            
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

