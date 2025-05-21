//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Isaac Urbina on 5/19/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - properties
	
	var cards: [Card] = cardData
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(alignment: .center, spacing: 20) {
				ForEach(cards) { card in
					CardView(card: card)
				} // ForEach
			} // HStack
		} // ScrollView
	}
}


// MARK: - preview

struct 	ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(cards: cardData)
			.previewDevice("iPhone 16 Pro")
	}
}
