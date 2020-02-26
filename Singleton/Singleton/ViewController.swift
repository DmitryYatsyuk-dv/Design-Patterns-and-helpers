//
//  ViewController.swift
//  Singleton
//
//  Created by Lucky on 26/02/2020.
//  Copyright © 2020 DmitriyYatsyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = Safe.shared
        print(safe.money)
    }
}

