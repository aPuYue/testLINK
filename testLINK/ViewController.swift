//
//  ViewController.swift
//  testLINK
//
//  Created by user on 2022/02/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let markStr: String = "AAAAAAAAAA"
        let helloWorld: String = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxAAAAAAAAAAooooooooooooooooooooo"
        let helloWorldAttrStr: NSMutableAttributedString = NSMutableAttributedString(string: helloWorld)
        let markStrRange: Range = helloWorld.range(of: markStr)!
        let location = helloWorld.distance(from: helloWorld.startIndex, to: markStrRange.lowerBound)
        let range: NSRange = NSRange(location: location, length: markStr.count)

        
//        helloWorldAttrStr.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: range)
        let urlStr = "http://www.google.co.jp"
        let url = URL(string: urlStr)
        helloWorldAttrStr.addAttribute(.link, value: url, range: range)

        testView.attributedText = helloWorldAttrStr
    }


}

