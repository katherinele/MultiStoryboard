//
//  MainViewController.swift
//  MultiStoryboard
//
//  Created by 汤坤 on 15/7/8.
//  Copyright (c) 2015年 Soup. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let story_first = UIStoryboard(name: "First", bundle: nil)
        let story_second = UIStoryboard(name: "Second", bundle: nil)
        
        let first_nav_viewcontroller = story_first.instantiateViewControllerWithIdentifier("FirstNav") as! UINavigationController
        let second_nav_viewcontroller = story_second.instantiateViewControllerWithIdentifier("SecondNav") as! UINavigationController
        
        first_nav_viewcontroller.tabBarItem = UITabBarItem(title: "First", image: nil, tag: 0)
        second_nav_viewcontroller.tabBarItem = UITabBarItem(title: "Second", image: nil, tag: 1)
        
        self.viewControllers = [first_nav_viewcontroller, second_nav_viewcontroller]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
