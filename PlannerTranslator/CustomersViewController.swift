//
//  CustomersViewController.swift
//  PlannerTranslator
//
//  Created by Galina Iaroshenko on 29.11.2022.
//

import UIKit

class CustomersViewController: UIViewController {

   let buttonToTheNextScreen = UIButton()
    //let homeButton = UIButton()
    
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
        view.backgroundColor = .systemGreen
        print("CustomersViewController")
        
        textLabel.text = "Заказчики"
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
    }
    
    @objc private func didTapNextScreenButton() {
        self.navigationController?.pushViewController(FirstCustomerViewController(), animated: true)
    }
}

class FirstCustomerViewController: UIViewController {
    
    let buttonToTheNextScreen1 = UIButton()
    let homeButton1 = UIButton()
    
    let textLabel:UILabel = {
           let label = UILabel()
           label.font = UIFont.boldSystemFont(ofSize: 20)
           return label
       }()
    
    let containerView:UIView = {
               let view = UIView()
               view.translatesAutoresizingMaskIntoConstraints = false
               view.clipsToBounds = true
               return view
           }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Вы перешли на следующий экран"
        
    
        buttonToTheNextScreen1.setTitle("На следующий экран", for: .normal)
        view.addSubview(buttonToTheNextScreen1)
        buttonToTheNextScreen1.backgroundColor = .white
        buttonToTheNextScreen1.setTitleColor(.black, for: .normal)
        buttonToTheNextScreen1.frame = CGRect(x: 100, y: 400, width: 200, height: 52)
        buttonToTheNextScreen1.addTarget(self, action: #selector(didTapNextScreenButton1), for: .touchUpInside)

        
        homeButton1.addTarget(self, action: #selector(didTapHomeButton1), for: .touchUpInside)
        homeButton1.setTitle("Домой", for: .normal)
        view.addSubview(homeButton1)
        homeButton1.backgroundColor = .white
        homeButton1.setTitleColor(.black, for: .normal)
        homeButton1.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        

    }
    
    @objc private func didTapHomeButton1() {
        self.navigationController?.popToRootViewController(animated:true)
    }
    
    @objc private func didTapNextScreenButton1() {
        self.navigationController?.pushViewController(SecondCustomerViewController(), animated: true)
    }
}

class SecondCustomerViewController: UIViewController {
    
    let homeButton2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Вы перешли на следующий экран"
        
        homeButton2.setTitle("Домой", for: .normal)
        view.addSubview(homeButton2)
        homeButton2.backgroundColor = .white
        homeButton2.setTitleColor(.black, for: .normal)
        homeButton2.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        homeButton2.addTarget(self, action: #selector(didTapHomeButton2), for: .touchUpInside)
    }
    
    @objc private func didTapHomeButton2() {
        self.navigationController?.popToRootViewController(animated:true)
    }
    
}
