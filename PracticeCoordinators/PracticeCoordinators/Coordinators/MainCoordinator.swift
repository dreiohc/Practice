//
//  MainCoordinator.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/15/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
	var childCoordinators = [Coordinator]()
	var navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		let vc = BlueViewController.instantiate()
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	func goToRed() {
		let vc = RedViewController.instantiate()
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	func goToYellow() {
		let vc = YellowViewController.instantiate()
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	func goToGreen() {
		let vc = GreenViewController.instantiate()
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	
	// set signal pattern only
	// generic as much as possible if same function
	// coordinator should be the one to handle the views not blueVC
	// dapat nakikinig lang si coordinator
	
	
}
