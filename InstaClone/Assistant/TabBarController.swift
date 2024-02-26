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
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        self.modalPresentationStyle = .fullScreen
        self.modalTransitionStyle = .crossDissolve
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpTabBar(tabBar: tabBar)
        
        let homeVC = HomeViewController()
        let reelsVC = ReelsViewController()
        let createVC = CreateViewController()
        let heartVC = HeartViewController()
        let profileVC = ProfileViewController()
        
        self.viewControllers = [
            self.createTabBarItem(tabBarTitle: "", tabBarImage: "Home", selectedImage: "SelectedHomeIcon", viewController: homeVC),
            self.createTabBarItem(tabBarTitle: "", tabBarImage: "Reels", selectedImage: "Reels", viewController: reelsVC),
            self.createTabBarItem(tabBarTitle: "", tabBarImage: "Create", selectedImage: "Create", viewController: createVC),
            self.createTabBarItem(tabBarTitle: "", tabBarImage: "Heart", selectedImage: "SelectedHeartIcon", viewController: heartVC),
            self.createTabBarItem(tabBarTitle: "", tabBarImage: "Profile", selectedImage: "SelectedProfileIcon", viewController: profileVC)
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
        
//        tabBar.layer.cornerRadius = 24
//        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
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
                print(naviVC)
            }
            
        if let naviVC = self.selectedViewController as? CustomizedNavigationController {
            print(naviVC)
            }
            
        } else {
            if let naviVC = self.selectedViewController as? CustomizedNavigationController {
                print(naviVC)
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
