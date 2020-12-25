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

    override func viewDidLoad() {
        super.viewDidLoad()

        // set color of front view
        view.backgroundColor = .red
        
        // layout label
        label.center = view.center
        
        // add label to view
        view.addSubview(label)
    }

}
