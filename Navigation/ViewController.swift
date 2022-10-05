//
//  ViewController.swift
//  Navigation
//
//  Created by Nguyen Quang Ha on 05/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bar Items"
        addButton()
        configureItems()
    }
    
    private func addButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center = view.center
        button.backgroundColor = .systemOrange
        button.setTitle("Go to view 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        navigationController?.navigationBar.tintColor = .label
        view.addSubview(button)
    }
    
    @objc func didTapButton() {
        let newVC = UIViewController()
        newVC.title = "View 2"
        newVC.view.backgroundColor = .systemGray
        newVC.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out",
                                                                  style: .done,
                                                                  target: self,
                                                                  action: nil)
        navigationController?.pushViewController(newVC, animated: true)
    }
    
    private func configureItems() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add, target: self, action: nil
        )
    }
}

