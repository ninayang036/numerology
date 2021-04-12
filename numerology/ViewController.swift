//
//  ViewController.swift
//  numerology
//
//  Created by Yang Nina on 2021/4/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var starsignLabel: UILabel!
    @IBOutlet weak var stardateLabel: UILabel!
    @IBOutlet weak var lifecodeLabel: UILabel!
    @IBOutlet weak var starsignBtn: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //設定文字顏色
        self.datePicker.setValue(UIColor.white, forKey: "textColor")
        //今天日期加這段才會變成白色
        self.datePicker.setValue(false, forKey: "highlightsToday")
    }
   
    //計算生命靈數
    func lifeCodeCal() {
        //日期轉字串
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yMd"
        var dateString = dateFormatter.string(from: datePicker.date)
        var sum = 0
        //repeat-while迴圈
        repeat{
            //20210412 = 2 + 0 + 2 + 1 + 0 + 4 + 1 + 2 = 12
            //1 + 2 = 3
            //從零開始，每次都會重新計算，否則將進入無限循環
            sum = 0
            //把每個字元相加
        for characters in dateString {
            //字串轉數字
            let number = Int(String(characters))!
            sum = sum + number
        }
           dateString = "\(sum)"
        //當sum > 9時，執行迴圈
        }while sum > 9
        //當sum <= 9時，不再執行
        
        lifecodeLabel.text = "\(sum)"
    }
    func starsign(){
        let pickdate = datePicker.date
        let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: pickdate)
        let month = dateComponents.month!
        let day = dateComponents.day!
        
        if month == 1 && day >= 21 || month == 2 && day <= 19 {
            starsignLabel.text = "水瓶座 Aquarius"
            starsignBtn.setImage(UIImage(named: "aquarius"), for: UIControl.State.normal)
            stardateLabel.text = "1.21-2.19"
        }
        else if month == 2 && day >= 20 || month == 3 && day <= 20 {
            starsignLabel.text = "雙魚座 Pisces"
            starsignBtn.setImage(UIImage(named: "pisces"), for: UIControl.State.normal)
            stardateLabel.text = "2.20-3.20"
        }
        else if month == 3 && day >= 21 || month == 4 && day <= 19 {
            starsignLabel.text = "牡羊座 Aries"
            starsignBtn.setImage(UIImage(named: "aries"), for: UIControl.State.normal)
            stardateLabel.text = "3.21-4.19"
        }
        else if month == 4 && day >= 20 || month == 5 && day <= 20 {
            starsignLabel.text = "金牛座 Taurus"
            starsignBtn.setImage(UIImage(named: "taurus"), for: UIControl.State.normal)
            stardateLabel.text = "4.20-5.20"
        }
        else if month == 5 && day >= 21 || month == 6 && day <= 21 {
            starsignLabel.text = "雙子座 Gemini"
            starsignBtn.setImage(UIImage(named: "gemini"), for: UIControl.State.normal)
            stardateLabel.text = "5.21-6.21"
        }
        else if month == 6 && day >= 22 || month == 7 && day <= 22 {
            starsignLabel.text = "巨蟹座 Cancer"
            starsignBtn.setImage(UIImage(named: "cancer"), for: UIControl.State.normal)
            stardateLabel.text = "6.22-7.22"
        }
        else if month == 7 && day >= 23 || month == 8 && day <= 22 {
            starsignLabel.text = "獅子座 Leo"
            starsignBtn.setImage(UIImage(named: "leo"), for: UIControl.State.normal)
            stardateLabel.text = "7.23-8.22"
        }
        else if month == 8 && day >= 23 || month == 9 && day <= 22 {
            starsignLabel.text = "處女座 Virgo"
            starsignBtn.setImage(UIImage(named: "virgo"), for: UIControl.State.normal)
            stardateLabel.text = "8.23-9.22"
        }
        else if month == 9 && day >= 23 || month == 10 && day <= 23 {
            starsignLabel.text = "天秤座 Libra"
            starsignBtn.setImage(UIImage(named: "libra"), for: UIControl.State.normal)
            stardateLabel.text = "9.23-10.23"
        }
        else if month == 10 && day >= 24 || month == 11 && day <= 21 {
            starsignLabel.text = "天蠍座 Scorpio"
            starsignBtn.setImage(UIImage(named: "scorpio"), for: UIControl.State.normal)
            stardateLabel.text = "10.24-11.21"
        }
        else if month == 11 && day >= 22 || month == 12 && day <= 20 {
            starsignLabel.text = "射手座 Sagittarius"
            starsignBtn.setImage(UIImage(named: "sagittarius"), for: UIControl.State.normal)
            stardateLabel.text = "11.22-12.20"
        }
        else{
            starsignLabel.text = "摩羯座 Capricorn"
            starsignBtn.setImage(UIImage(named: "capricorn"), for: UIControl.State.normal)
            stardateLabel.text = "12.21-1.20"
        }
    }
    @IBAction func result(_ sender: UIButton) {
        starsignBtn.setBackgroundImage(UIImage(named: ""), for: UIControl.State.normal)
        lifeCodeCal()
        starsign()
    }
    @IBSegueAction func resultDetail(_ coder: NSCoder) -> ResultViewController? {
        let lifecode = lifecodeLabel.text
        let starsign = starsignBtn.currentImage
        return ResultViewController(coder: coder, lifecode: lifecode!, starsign: starsign!)
//        return ResultViewController(coder: coder)
    }
    @IBAction func reset(_ sender: UIButton) {
        starsignBtn.setImage(UIImage(named: "question"), for: UIControl.State.normal)
        starsignLabel.text = "******"
        stardateLabel.text = "******"
        lifecodeLabel.text = "?"
    }
}

