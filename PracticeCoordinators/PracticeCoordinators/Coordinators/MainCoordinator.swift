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
		let vc = BlueViewController.instantiate(color: "Blue")
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	func goToRed() {
		let vc = RedViewController.instantiate(color: "Red")
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	func goToYellow() {
		let vc = YellowViewController.instantiate(color: "Yellow")
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	func goToGreen() {
		let vc = GreenViewController.instantiate(color: "Green")
		vc.coordinator = self
		navigationController.pushViewController(vc, animated: false)
	}
	
	
}
