//
//  UIViewControllerExtension.swift
//  NTAFilter
//
//  Created by admin on 8/14/18.
//  Copyright © 2018 NguyenTuAnh. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {

    static func instantiateFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>(_ viewType: T.Type) -> T {
            return T.init(nibName: String(describing: T.classString()), bundle: Bundle(for: T.self))
        }
        return instantiateFromNib(self)
    }

}

extension NSObject {

    class func classString() -> String {
        return String(describing: self)
    }

}
