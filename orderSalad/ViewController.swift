//
//  ViewController.swift
//  orderSalad
//
//  Created by 王衍智 on 2023/2/7.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var baseSelect: UISegmentedControl!
    
    @IBOutlet weak var mainCourseSelect: UISegmentedControl!
    @IBOutlet weak var sideDishSlider: UISlider!
    @IBOutlet weak var sideDishNumber: UILabel!
    @IBOutlet weak var sauceSwitch: UISwitch!
    @IBOutlet weak var noodelSwitch: UISwitch!
    @IBOutlet weak var remarkTextfield: UITextField!
    
    @IBOutlet weak var contentField: UITextView!
    //先設定變數給以下
    var baseSet = "嫩萵苣"
    var mainSet = "舒肥雞胸"
    var sauceSet = "手作醬料"
    var noodleSet = "天使冷麵"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //根據選擇切換以上變數（生菜）
    @IBAction func baseSetSelect(_ sender: Any) {
        if baseSelect.selectedSegmentIndex == 0{
            baseSet = "嫩萵苣"
        }else {
            baseSet = "脆生菜"
        }
    }
    //切換主食
    @IBAction func mainSetSelect(_ sender: Any) {
        if mainCourseSelect.selectedSegmentIndex == 0{
            mainSet = "舒肥雞胸"
        }else if mainCourseSelect.selectedSegmentIndex == 1{
            mainSet = "鹽烤鮭魚"
        }else{
            mainSet = "嫩煎牛排"
        }
    }

        //設定配料數量 //使float轉為int //數字轉換為字串 "\()"_會保留小數點 or Int(sender.value).descripition轉換整數並讀取property
        @IBAction func sideSliderChange(_ sender: UISlider) {
            sender.value.round()  //先轉換為整數
            sideDishNumber.text = sender.value.formatted(.number.precision(.fractionLength(0)))
        }//formatted()也可轉換為字串
        
    @IBAction func sauceSetSelect(_ sender: Any) {
        if sauceSwitch.isOn{
            sauceSet = "手工醬料"
        }else{
            sauceSet = ""
        }
    }
    @IBAction func noodleSetSelect(_ sender: Any) {
        if noodelSwitch.isOn{
            noodleSet = "天使冷麵"
        }else{
            noodleSet = ""
        }
    }
    
    
        @IBAction func orderButtom(_ sender: Any) {
            contentField.text = "The Best Salad:\n\(baseSet)+\(mainSet)+\(sideDishNumber.text!)種配料\n\(sauceSet)\n\(noodleSet)\n (\(remarkTextfield.text!))"
        }
        
    }
    
