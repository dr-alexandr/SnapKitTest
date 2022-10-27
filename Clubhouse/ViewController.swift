//
//  ViewController.swift
//  Clubhouse
//
//  Created by Dr.Alexandr on 27.10.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        navigationController?.delegate = self
        navigationController?.navigationBar.backgroundColor = UIColor(named: "LightBrown")
        navigationController?.navigationBar.tintColor = UIColor.brown

    }
    
    func initialize() {
        
        title = "Clubhouse"
        view.backgroundColor = UIColor(named: "LightBrown")
        
        //Description label
        let description = UILabel()
        description.text = "Clubhouse is like an always-on dinner party where you can hang out with friends, meet new ones and talk about anything."
        description.font = UIFont.systemFont(ofSize: 20)
        description.numberOfLines = 0
        view.addSubview(description)
        
        //Description constraints
        description.snp.makeConstraints { description in
            description.left.right.equalToSuperview().inset(50)
            description.centerY.equalToSuperview()
        }
        
        //Welcome label
        let label = UILabel()
        label.text = "🎉 Welcome!"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(label)
        
        //Welcome constraints
        label.snp.makeConstraints { (maker) in
            maker.left.right.equalToSuperview().inset(50)
            maker.bottom.equalTo(description).inset(150 )
        }
        
        //"Get your username ->" Button
        let button = UIButton(type: .system)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Get your username ->", for: .normal)
        button.backgroundColor = UIColor(named: "LightBlue")
        button.layer.cornerRadius = 25
        view.addSubview(button)
        
        //"Get your username ->" constraints
        button.snp.makeConstraints { (button) in
            button.centerX.equalToSuperview()
            button.left.right.equalToSuperview().inset(50)
            button.height.equalTo(50)
            button.bottom.equalToSuperview().inset(100)
        }
        
        //Button "Get your username ->" target setup
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }

    //Button "Get your username ->" func
    @objc func buttonPressed() {
        print("Button pressed")
        let secondVC = SecondVC()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

