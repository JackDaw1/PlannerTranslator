//
//  ViewController.swift
//  PlannerTranslator
//
//  Created by Galina Iaroshenko on 28.11.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    /*private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Профиль", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()*/

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        //view.addSubview(button)
        //button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        generateTabBar()
        setTabBarAppearance()
    }
    /*
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }*/
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(
                viewController: CalendarViewController(),
                title: "Календарь",
                image: UIImage(systemName: "calendar")
            ),
            
            generateVC(
                viewController: HomeViewController(),
                title: "Заказы",
                image: UIImage(systemName: "house.fill")
            ),
            
            generateVC(
                viewController: CustomersViewController(),
                title: "Заказчики",
                image: UIImage(systemName: "person")
            ),
            
            generateVC(
                viewController: PersonViewController(),
                title: "Профиль",
                image: UIImage(systemName: "person.circle")
            )
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
  
    
    private func setTabBarAppearance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        //let roundLayer = CAShapeLayer()
        /*
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        */
        
        tabBar.itemWidth = width / 4
        tabBar.itemPositioning = .centered
    }

    
}

    
