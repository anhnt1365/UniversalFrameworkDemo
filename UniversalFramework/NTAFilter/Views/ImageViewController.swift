//
//  ImageViewController.swift
//  NTAFilter
//
//  Created by admin on 8/14/18.
//  Copyright © 2018 NguyenTuAnh. All rights reserved.
//

import UIKit
import AlamofireImage

public class ImageViewController: UIViewController {

    @IBOutlet weak var originImage: UIImageView!

    public var urlImage: String?

    public override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        if let urlString = urlImage,
            let url = URL(string: urlString) {
            originImage.af_setImage(withURL: url)
        }
    }

    @IBAction func dimissView(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }


}


extension ImageViewController {

    public static func viewController() -> ImageViewController {
        let view = ImageViewController.instantiateFromNib()
        return view
    }

}
