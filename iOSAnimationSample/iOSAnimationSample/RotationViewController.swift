//
//  RotationViewController.swift
//  iOSAnimationSample
//
//  Created by jiangchao on 15/10/21.
//  Copyright © 2015年 jiangchao. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var wheelImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sipn () {
        UIView.animateWithDuration(1, delay: 0,
            options: UIViewAnimationOptions.CurveLinear,    //设置动画线性过渡
            animations: {
                self.wheelImage.transform = CGAffineTransformRotate(self.wheelImage.transform, CGFloat(M_PI))   //设置动画的起点
            }){ (finished) -> Void in
                self.sipn()
        }//Trailing 闭包
        
//        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: {
//                self.wheelImage.transform = CGAffineTransformRotate(self.wheelImage.transform, CGFloat(M_PI))
//            }, completion: {(finished) -> Void in
//                self.sipn()
//        })
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.sipn()
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
