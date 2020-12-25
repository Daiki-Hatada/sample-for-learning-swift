//
//  SampleViewController.swift
//  SampleForLearningSwift
//
//  Created by 茂木翔大 on 2020/12/25.
//  Copyright © 2020 Daiki Hatada. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {
    
    // create label instance
    private let label: UILabel = {
        let label = UILabel()
        label.text = "hello, world"
        label.sizeToFit()
        return label
    }()
    
    private let okButton: UIButton = {
        let button = UIButton()
        button.setTitle("OK!", for: .normal)
        button.frame.size = CGSize(width: 200, height: 40)
        button.addTarget(self, action: #selector(buttonDidTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // set color of front view
        view.backgroundColor = .blue
        
        // layout label
        label.center = view.center
        
        // add label to view
        view.addSubview(label)
        
        okButton.frame.origin.y = label.frame.maxY + 20
        okButton.center.x = view.center.x
        view.addSubview(okButton)
    }
    
    @objc private func buttonDidTapped() {
//        if view.backgroundColor == .red {
//            view.backgroundColor = .blue
//        } else {
//            view.backgroundColor = .red
//        }
        let viewController = SecondViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

}
