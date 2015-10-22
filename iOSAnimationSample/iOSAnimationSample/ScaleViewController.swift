//
//  ScaleViewController.swift
//  iOSAnimationSample
//
//  Created by jiangchao on 15/10/20.
//  Copyright © 2015年 jiangchao. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    @IBOutlet weak var pinkSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1, animations: {
            self.pinkSquare.transform = CGAffineTransformMakeScale(2.0, 2.0)
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
