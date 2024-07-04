//
//  TabBarController.swift
//  PlayingBall
//
//  Created by 感光影视 on 2023/6/7.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //设置tabbar
        //整体tabBar的样式
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        
        //tabBarItem的样式
        let tabBarItemAppearance = UITabBarItemAppearance()
        //未选中时
        tabBarItemAppearance.normal.iconColor = .label
        tabBarItemAppearance.normal.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.label,
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 11, weight: .light)
        ]
        //选中时
        tabBarItemAppearance.selected.titleTextAttributes = [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 11, weight: .medium)
        ]
        
        //iOS项目时堆叠型tabBarItem的样式
        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
