//
//  GuideVC.swift
//  PlayingBall
//
//  Created by 感光影视 on 2023/6/7.
//

import UIKit

//引导页
class GuideVC: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension GuideVC: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x
        let viewWidth = view.bounds.width
        //print(x)
        let pageIndex = round(x / viewWidth)
        pageControl.currentPage = Int(pageIndex)
        
        if x > (viewWidth * 2 + 50){
            let homeVC = storyboard!.instantiateInitialViewController()!
            homeVC.modalPresentationStyle = .fullScreen
            present(homeVC, animated: true)
        }
    }
}

