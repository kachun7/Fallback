//
//  KCRootViewController.swift
//  Fallback
//
//  Created by Ka-Chun Cheung on 10/10/15.
//  Copyright © 2015 Ka-Chun Cheung. All rights reserved.
//

import UIKit

class KCRootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let playButton = self.playButton()
        self.view.addSubview(playButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Play button
    
    private func playButton() -> UIButton {
        let frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        let button = UIButton(frame: frame)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle(NSLocalizedString("play", comment: ""), forState: UIControlState.Normal)
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button.addTarget(self, action: "didPlayButtonPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        return button
    }
    
    
    func didPlayButtonPressed(sender: UIButton!) {
        print("tapped button")
        let vc = GameViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
