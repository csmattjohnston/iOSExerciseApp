//
//  PageControllerVC.swift
//  Created by Matthieu on 5/27/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class TopLayerPageVC: UIViewController,UIPageViewControllerDataSource,UIPageViewControllerDelegate {
    
    var pageViewController: UIPageViewController!
    var mainTitles:NSArray!
    var subTitles:NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainTitles = ["Discover","Connect","Notifications","Commitment Level","Nutrition","Track Your Progress","All Set!"]
        self.subTitles = ["Search!","Motivate and follow!","Get notified!","Raise your commitment level by staying active at the gym!","Follow our guided meal plans to reach your goals!","Monitor your progress and reach your goals!",""]
        
        self.pageViewController = self.storyboard!.instantiateViewControllerWithIdentifier("pageControllerVC") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        
        let startVC = self.viewControllerAtIndex(0) as MainContentVC
        
        let viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as? [UIViewController], direction: .Forward, animated: true, completion: nil)
        
        
        self.pageViewController.view.frame = CGRectMake(0, 30, self.view.frame.width, self.view.frame.height - 60)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        
    }
    
    
    func viewControllerAtIndex(index:Int) -> MainContentVC{
        
        if (self.mainTitles.count == 0 || index >= self.mainTitles.count){
            return MainContentVC()
        }
        
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("MainContentVC") as! MainContentVC
        
        vc.mainTitle = self.mainTitles[index] as! String
        vc.subTitle = self.subTitles[index] as! String
        vc.pageIndex = index
        
        return vc
    }
    
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let vc = viewController as! MainContentVC
        var index = vc.pageIndex as Int
        
        if(index == 0 || index == NSNotFound){
            
            return nil
        }
        
        index -= 1
        
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let vc = viewController as! MainContentVC
        var index = vc.pageIndex as Int
        
        
        if(index == NSNotFound){
            return nil
            
        }
        
        index += 1
        
        if(index == self.mainTitles.count){
            
            return nil
        }
        
        return viewControllerAtIndex(index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.mainTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
    
}
