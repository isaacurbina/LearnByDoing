//
//  Card.swift
//  LearnByDoing
//
//  Created by Isaac Urbina on 5/20/25.
//

import SwiftUI

struct Card : Identifiable {
	var id = UUID()
	var title: String
	var headline: String
	var imageName: String
	var callToAction: String
	var message: String
	var gradientColors: [Color]
}
