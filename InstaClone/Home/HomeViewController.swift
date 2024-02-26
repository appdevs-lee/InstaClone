//
//  HomeViewController.swift
//  InstaClone
//
//  Created by Awesomepia on 2/26/24.
//

import UIKit

final class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setViewFoundation()
        self.initializeObjects()
        self.setDelegates()
        self.setGestures()
        self.setNotificationCenters()
        self.setSubviews()
        self.setLayouts()
        self.setUpNavigationItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setViewAfterTransition()
    }
    
    //    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    //        return .portrait
    //    }
    
    deinit {
        print("----------------------------------- HomeViewController is disposed -----------------------------------")
    }
}

// MARK: Extension for essential methods
extension HomeViewController: EssentialViewMethods {
    func setViewFoundation() {
        
    }
    
    func initializeObjects() {
        
    }
    
    func setDelegates() {
        
    }
    
    func setGestures() {
        
    }
    
    func setNotificationCenters() {
        
    }
    
    func setSubviews() {
        
    }
    
    func setLayouts() {
        //let safeArea = self.view.safeAreaLayoutGuide
        
        //
        NSLayoutConstraint.activate([
            
        ])
    }
    
    func setViewAfterTransition() {
        //self.navigationController?.setNavigationBarHidden(false, animated: true)
        //self.tabBarController?.tabBar.isHidden = false
    }
    
    private func setUpNavigationTitle() -> UIImageView {
        let navigationTitleImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 105, height: 28))
        navigationTitleImageView.image = UIImage(named: "NavigationLogoImage")
        navigationTitleImageView.contentMode = .scaleAspectFill
        navigationTitleImageView.clipsToBounds = true
        
        return navigationTitleImageView
    }
    
    func setUpNavigationItem() {
        self.view.backgroundColor = .white
        
        let appearance = UINavigationBarAppearance()
//        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .useRGB(red: 250, green: 250, blue: 250) // Navigation bar is transparent and root view appears on it.
//        appearance.titleTextAttributes = [
//            NSAttributedString.Key.foregroundColor:UIColor.useRGB(red: 66, green: 66, blue: 66),
//            .font:UIFont.useFont(ofSize: 18, weight: .Bold)
//        ]
        
        // MARK: NavigationItem appearance for each view controller
        self.navigationItem.scrollEdgeAppearance = appearance
        self.navigationItem.standardAppearance = appearance
        self.navigationItem.compactAppearance = appearance
        
        self.navigationItem.titleView = self.setUpNavigationTitle()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "CameraIcon")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(leftBarButtonItem(_:)))
        
        let igtvButton = UIButton()
        igtvButton.setImage(UIImage(named: "IGTV"), for: .normal)
        igtvButton.addTarget(self, action: #selector(igtvBarButtonItem(_:)), for: .touchUpInside)
        
        let directButton = UIButton()
        directButton.setImage(UIImage(named: "Direct"), for: .normal)
        directButton.addTarget(self, action: #selector(directBarButtonItem(_:)), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [igtvButton, directButton])
        stackView.spacing = 16
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: stackView)
        
    }

}

// MARK: - Extension for methods added
extension HomeViewController {
    
}

// MARK: - Extension for selector methods
extension HomeViewController {
    @objc func leftBarButtonItem(_ barButtonItem: UIBarButtonItem) {
        print("leftBarButtonItem")
    }
    
    @objc func directBarButtonItem(_ barButtonItem: UIBarButtonItem) {
        print("directBarButtonItem")
    }
    
    @objc func igtvBarButtonItem(_ barButtonItem: UIBarButtonItem) {
        print("igtvBarButtonItem")
    }
}
