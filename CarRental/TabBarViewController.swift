//
//  TabBarViewController.swift
//  CarRental
//
//  Created by marwa awwad mohamed awwad on 25/03/2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
    }
    
    private func configureTabs() {
        let vc1 = MainViewController()

        
        //set tab images
        vc1.tabBarItem.image = UIImage(systemName: "house")
    
        
  
        vc1.title = "Main"
    

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.label, .font: UIFont.systemFont(ofSize: 14)]
            
            
        
    
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemGray2
        
        let navController1 = UINavigationController(rootViewController: vc1)
    
        
        self.setViewControllers([navController1 ], animated: false)
    }

}
