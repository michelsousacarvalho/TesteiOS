//
//  NavigationController.swift
//  SantanderInvestmentApp
//
//  Created by m.a.carvalho on 18/09/18.
//  Copyright © 2018 Michel de Sousa Carvalho. All rights reserved.
//

import Foundation
import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = UIColor.white
        
        navigationBar.backItem?.title = ""
        navigationBar.shadowImage = UIImage()
    }
}
