//
//  Storyboarded.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/15/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit

protocol Storyboarded {
	static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
	static func instantiate() -> Self {
		let id = String(describing: self)
		let storyboard = UIStoryboard(name: id, bundle: Bundle.main)
		return storyboard.instantiateViewController(withIdentifier: id) as! Self
	}
}
