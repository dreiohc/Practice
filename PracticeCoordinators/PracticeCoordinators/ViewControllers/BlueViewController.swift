//
//  BlueViewController.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/15/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit
import Reusable

class BlueViewController: UIViewController, Storyboarded {
	
	// MARK: - Stored
	
	let colors = ["Red", "Yellow"]
	
	weak var coordinator: MainCoordinator?
	
	
	// MARK: - Outlets
	
	@IBOutlet weak var tableView: UITableView!
	
	// MARK: - Life Cycle
	
	override func viewDidLoad() {
        super.viewDidLoad()
		configureTableView()

    }
    
	// MARK: - Instance
	
	private func configureTableView() {
		tableView.dataSource = self
		tableView.delegate = self
		tableView.register(cellType: MyCustomCell.self)
	}
	
	

}

// MARK: - TableView delegates

extension BlueViewController: UITableViewDelegate, UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return colors.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell: MyCustomCell = tableView.dequeueReusableCell(for: indexPath)

		cell.colorLabel.text = colors[indexPath.row]
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let color = colors[indexPath.row]
		if color == "Red" {
			coordinator?.goToRed()
		} else {
			coordinator?.goToYellow()
		}
	}
	
}
