//
//  ResultViewController.swift
//  MyCalc
//
//  Created by KEN on 2017/01/01.
//  Copyright © 2017年 KEN. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 最初の画面で入力された金額
    var price: Int = 0
    
    // 前の画面で入力されたパーセンテージ
    var percent: Int = 0
    
    // 計算結果を表示するフィールド
    @IBOutlet weak var resultField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 割引率を算出する
        let percentValue = Float(percent) / 100
        // 割引額を算出する
        let waribikiPrice = Float(price) * percentValue
        // 割引後の価格を算出する
        let percentOffPrice = price - Int(waribikiPrice)
        // 結果を表示する
        resultField.text = "\(percentOffPrice)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
