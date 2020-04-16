//
//  YellowViewController.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/15/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController, Storyboarded {
	
	
	// MARK: - Stored
	
	weak var coordinator: MainCoordinator?
	private var viewModel = YellowViewModel()
	private var color: Color?
	
	// MARK: - Outlets
	@IBOutlet weak var colorNameLabel: UILabel!
	
	// MARK: - Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	// MARK: - IBActions
	
	@IBAction func didTapGreenButton(_ sender: UIButton) {
		coordinator?.goToGreen()
	}
	
	
	@IBAction func didTapCreamButton(_ sender: UIButton) {
		self.color = Color(colorName: Shade.Cream.rawValue, shade: .Cream)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	@IBAction func didTapLemonButton(_ sender: UIButton) {
		self.color = Color(colorName: Shade.Lemon.rawValue, shade: .Lemon)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	@IBAction func didTapGoldButton(_ sender: UIButton) {
		self.color = Color(colorName: Shade.Gold.rawValue, shade: .Gold)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	@IBAction func didTapKhakiButton(_ sender: UIButton) {
		self.color = Color(colorName: Shade.Khaki.rawValue, shade: .Khaki)
		view.backgroundColor = viewModel.changeColor(color: color!)
		colorNameLabel.text = self.color?.colorName
	}
	
}
