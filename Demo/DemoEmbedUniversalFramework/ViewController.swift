//
//  ViewController.swift
//  DemoEmbedUniversalFramework
//
//  Created by admin on 8/14/18.
//  Copyright © 2018 NguyenTuAnh. All rights reserved.
//

import UIKit
import NTAFilter

class ViewController: UIViewController {

    @IBOutlet weak var originImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func showFilter(_ sender: UIButton) {
        let viewFilter = ImageViewController.viewController()
        viewFilter.urlImage = "https://i.redd.it/7k24xova0ya11.jpg"
        present(viewFilter, animated: true, completion: nil)
    }

}

