//
//  CalendarViewController.swift
//  PlannerTranslator
//
//  Created by Galina Iaroshenko on 29.11.2022.
//

import UIKit

class CalendarViewController: UIViewController {
    
    let buttonToTheNextScreen = UIButton()
    let homeButton = UIButton()
    
    let textLabel:UILabel = {
           let label = UILabel()
           //self.translatesAutoresizingMaskIntoConstraints = false
           label.font = UIFont.boldSystemFont(ofSize: 20)
           return label
       }()
    
    let containerView:UIView = {
               let view = UIView()
               view.translatesAutoresizingMaskIntoConstraints = false
               view.clipsToBounds = true // this will make sure its children do not go out of the boundary
               return view
           }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        print("CalendarViewController")
        
       
        
        textLabel.text = "Календарь"
        containerView.addSubview(textLabel)
        view.addSubview(containerView)
        containerView.heightAnchor.constraint(equalToConstant:400).isActive = true
        containerView.widthAnchor.constraint(equalToConstant:600).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
                        
        textLabel.heightAnchor.constraint(equalToConstant:150).isActive = true
        textLabel.widthAnchor.constraint(equalToConstant:190).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        buttonToTheNextScreen.setTitle("На следующий экран", for: .normal)
        view.addSubview(buttonToTheNextScreen)
        buttonToTheNextScreen.backgroundColor = .white
        buttonToTheNextScreen.setTitleColor(.black, for: .normal)
        buttonToTheNextScreen.frame = CGRect(x: 100, y: 400, width: 200, height: 52)
        buttonToTheNextScreen.addTarget(self, action: #selector(didTapNextScreenButton), for: .touchUpInside)
        
        homeButton.setTitle("Домой", for: .normal)
        view.addSubview(homeButton)
        homeButton.backgroundColor = .white
        homeButton.setTitleColor(.black, for: .normal)
        homeButton.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        homeButton.addTarget(self, action: #selector(didTapHomeButton), for: .touchUpInside)
        
        
    }
    
    @objc private func didTapNextScreenButton() {
        let FirstCalendarVC = FirstCalendarViewController()
        let navCalendarToFirstVC = UINavigationController(rootViewController: FirstCalendarVC)
        navigationController?.pushViewController(navCalendarToFirstVC, animated: true)
        show(navCalendarToFirstVC, sender: self)
    }
    
    @objc private func didTapHomeButton() {
       
         let rootVC = HomeViewController()
         let navVC = UINavigationController(rootViewController: rootVC)
         navigationController?.pushViewController(navVC, animated: true)
         show(navVC, sender: self)
         
     
        /*
        let childNavigation = UINavigationController(rootViewController: HomeViewController())
        childNavigation.willMove(toParent: self)
        addChild(childNavigation)
        childNavigation.view.frame = view.frame
        view.addSubview(childNavigation.view)
        childNavigation.didMove(toParent: self)
         */
    }
    
}

class FirstCalendarViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Вы перешли на следующий экран"
    }
}
