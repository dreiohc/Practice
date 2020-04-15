//
//  RedViewController.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/15/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit

class RedViewController: UIViewController, Storyboarded {

		// MARK: - Outlets
	
		weak var coordinator: MainCoordinator?
	
		// MARK: - Life Cycle
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
	// MARK: - IBActions
	
	@IBAction func didTapGreenButton(_ sender: UIButton) {
		coordinator?.goToGreen()
	}
	
	
	
}
