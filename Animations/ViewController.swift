//  ViewController.swift
//  Animations
//  Created by DA MAC M1 157 on 2023/07/29.

import UIKit

class ViewController: UIViewController {
    
    private let myView: UIView = {
        let view = UIView()
        view.frame  = CGRect(x: 0, y: 0, width: 100, height: 100)
        //view.center = view.center
        view.backgroundColor = .black
        view.layer.cornerRadius = view.frame.size.width / 2
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        myView.center = self.view.center
    }

    // called when screen is tapped
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 2.5) {
            //self.myView.frame.origin.y = self.myView.frame.origin.y / 2
            self.myView.frame.size = CGSize(width: 300, height: 300)
            self.myView.layer.cornerRadius = self.myView.frame.size.width / 2
            self.myView.center = self.view.center
            self.myView.alpha = 0.1
            
            
        }
    }
}

