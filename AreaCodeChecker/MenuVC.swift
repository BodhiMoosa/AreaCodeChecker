//
//  MenuVC.swift
//  AreaCodeChecker
//
//  Created by Tayler Moosa on 2/22/20.
//  Copyright © 2020 Tayler Moosa. All rights reserved.
//

import Cocoa

class MenuVC: NSViewController {

    @IBOutlet weak var infoView: NSScrollView!
    @IBOutlet weak var areaCodeOutlet: NSTextFieldCell!
    @IBOutlet weak var stateOutlet: NSTextField!
    @IBOutlet weak var timezoneOutlet: NSTextField!
    override func viewDidLoad() {
        infoView.isHidden = true
        super.viewDidLoad()
        // Do view setup here.
        
        print(getTime())
        
        
    }
    

    

    
    
    
    
    
    
    

    @IBAction func clearAction(_ sender: Any) {
        areaCodeOutlet.stringValue = ""
        stateOutlet.stringValue = ""
        timezoneOutlet.stringValue = ""
    }
    @IBAction func buttonAction(_ sender: NSButtonCell) {
        if areaCodeOutlet.stringValue.count != 3 {
            stateOutlet.stringValue = "Invalid"
            timezoneOutlet.stringValue = "Invalid"
        }
        guard let areaCodeInt = Int(areaCodeOutlet.stringValue) else { return }
        guard let result = binaryTwo(array: areaCodeData, key: areaCodeInt, range: 0..<areaCodeData.count) else { return }
        timezoneOutlet.stringValue = result[1]
        stateOutlet.stringValue = result[2]
    }
    
    @IBAction func infoButtonClick(_ sender: Any) {
        infoView.isHidden.toggle()

    }
    @IBAction func closeButtonClick(_ sender: Any) {
        NSApplication.shared.terminate(self)
    }
}

extension MenuVC {
  // MARK: Storyboard instantiation
  static func freshController() -> MenuVC {
    let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
    let identifier = NSStoryboard.SceneIdentifier("MenuVC")
    guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? MenuVC else {
      fatalError("Why cant i find QuotesViewController? - Check Main.storyboard")
    }
    return viewcontroller
  }
}

extension MenuVC : NSTextFieldDelegate {
    
    
    
 
}
