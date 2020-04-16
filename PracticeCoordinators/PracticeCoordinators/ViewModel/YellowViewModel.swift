//
//  ColorViewModel.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/16/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit

public class YellowViewModel {
	
	private var color: Color?
	private var yellowShade = YellowShade()
	
	init() {
		
	}
	
	func changeColor(color: Color) -> UIColor {
		switch color.shade {
		case .Cream:
			return yellowShade.cream
		case .Lemon:
			return yellowShade.lemon
		case .Gold:
			return yellowShade.gold
		case .Khaki:
			return yellowShade.khaki
		default:
			return .yellow
		}
	}
	
	
	
}




