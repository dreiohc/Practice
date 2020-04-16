//
//  RedViewController.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/15/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit

class RedViewController: UIViewController, Storyboarded {

		// MARK: - Stored
	
	weak var coordinator: MainCoordinator?
	private var viewModel = RedViewModel()
	private var color: Color?
	
	
	
	
	
	// MARK: - IBOutlets
	
	@IBOutlet weak var colorNameLabel: UILabel!
	
	
		// MARK: - Life Cycle
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
	// MARK: - IBActions
	
	@IBAction func didTapGreenButton(_ sender: UIButton) {
		coordinator?.goToGreen()
	}
	
	@IBAction func didTapBloodRed(_ sender: UIButton) {
		self.color = Color(colorName: Shade.BloodRed.rawValue, shade: .BloodRed)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	
	@IBAction func didTapCardinalRed(_ sender: UIButton) {
		self.color = Color(colorName: Shade.CardinalRed.rawValue, shade: .CardinalRed)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	
	@IBAction func didTapCarmine(_ sender: UIButton) {
		self.color = Color(colorName: Shade.Carmine.rawValue, shade: .Carmine)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	
	@IBAction func didTapChiliRed(_ sender: UIButton) {
		self.color = Color(colorName: Shade.ChiliRed.rawValue, shade: .ChiliRed)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	
}
