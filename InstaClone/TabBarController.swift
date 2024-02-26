//
//  TabBarController.swift
//  Universal
//
//  Created by Awesomepia on 2023/01/17.
//

import UIKit

class TabBarController: UITabBarController {
    
    var previousSelectedIndex: Int = 0
    var currentSelectedIndex: Int = 0 {
        didSet {
            self.previousSelectedIndex = oldValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpTabBar(tabBar: tabBar)
        
//        let homeVC = RenewalMainViewController()
//        let travelVC = TravelMainViewController()\
//        let liveVC = RenewalLiveViewController()
//        let feedListVC = FeedListViewController()
//        let profileVC = RenewalProfileViewController(isTabbarHidden: false)
        
        self.viewControllers = [
//            self.createTabBarItem(tabBarTitle: "홈", tabBarImage: "Home", selectedImage: "SelectedHomeIcon", viewController: homeVC),
//            self.createTabBarItem(tabBarTitle: "여행", tabBarImage: "Travel", selectedImage: "SelectedTravelIcon", viewController: travelVC),
//            self.createTabBarItem(tabBarTitle: "라이브", tabBarImage: "DeselectedLiveIcon", selectedImage: "SelectedLiveIcon", viewController: liveVC),
//            self.createTabBarItem(tabBarTitle: "피드", tabBarImage: "DeselectedFeedIcon", selectedImage: "SelectedFeedIcon", viewController: feedListVC),
//            self.createTabBarItem(tabBarTitle: "프로필", tabBarImage: "Profile", selectedImage: "SelectedProfileIcon", viewController: profileVC)
        ]
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.selectedViewController?.preferredStatusBarStyle ?? .default
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return (self.selectedViewController?.supportedInterfaceOrientations ?? .portrait) == .landscape ? .landscape : .portrait
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return (self.selectedViewController?.preferredInterfaceOrientationForPresentation ?? .portrait) == .landscapeRight ? .landscapeRight : .portrait
    }
    
    func setUpTabBar(tabBar: UITabBar) {
        tabBar.backgroundColor = UIColor.white
        tabBar.tintColor = .useRGB(red: 151, green: 157, blue: 242)
        
        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font: UIFont.useFont(ofSize: 12, weight: .Medium)]
        appearance.setTitleTextAttributes(attributes, for: .normal)
        
        tabBar.layer.cornerRadius = 24
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        tabBar.layer.borderWidth = 0
    }
    
    deinit {
            print("----------------------------------- TabBarController disposed -----------------------------------")
    }

}



// MARK: - Extension for methods added
extension TabBarController {
    func createTabBarItem(tabBarTitle: String, tabBarImage: String, selectedImage: String, viewController: UIViewController) -> UINavigationController {
        let naviVC = CustomizedNavigationController(rootViewController: viewController)
        naviVC.tabBarItem.title = tabBarTitle
        naviVC.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        naviVC.tabBarItem.image = UIImage(named: tabBarImage)?.withRenderingMode(.alwaysOriginal)
        
        return naviVC
    }
}

// MARK: - Extension for UITabBarControllerDelegate
extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        if self.currentSelectedIndex == tabBarController.selectedIndex {
            if let naviVC = self.selectedViewController as? CustomizedNavigationController {
                
            }
            
        if let naviVC = self.selectedViewController as? CustomizedNavigationController {
                
            }
            
        } else {
            if let naviVC = self.selectedViewController as? CustomizedNavigationController {
                
            }
        }
        
        self.currentSelectedIndex = tabBarController.selectedIndex
        
        if tabBarController.selectedIndex == 0 {
        }
        
        if tabBarController.selectedIndex == 1 {
            
        }
        
        if tabBarController.selectedIndex == 2 {
            
        }
        
        if tabBarController.selectedIndex == 3 {
            
        }
        
        if tabBarController.selectedIndex == 4 {
            
        }
    }
}
