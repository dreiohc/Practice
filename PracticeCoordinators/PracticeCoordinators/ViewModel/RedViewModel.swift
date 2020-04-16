//
//  ColorViewModel.swift
//  PracticeCoordinators
//
//  Created by Myron Dulay on 4/16/20.
//  Copyright © 2020 Myron Dulay. All rights reserved.
//

import UIKit

public class RedViewModel {
	
	private var color: Color?
	private var redShade = RedShade()
	
	init() {
		
	}
	
	func changeColor(color: Color) -> UIColor {
		switch color.shade {
		case .BloodRed:
			return redShade.bloodRed
		case .CardinalRed:
			return redShade.cardinalRed
		case .Carmine:
			return redShade.carmine
		case .ChiliRed:
			return redShade.chiliRed
		default:
			return .red
		}
	}
	
	
	
}




