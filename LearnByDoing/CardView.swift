//
//  CardView.swift
//  LearnByDoing
//
//  Created by Isaac Urbina on 5/19/25.
//

import SwiftUI

struct CardView: View {
	
	
	// MARK: - properties
	
	var card: Card
	var gradient: [Color] = [Color("Color01"), Color("Color02")]
	
	
	// MARK: - body
	
	var body: some View {
		ZStack {
			Image(card.imageName)
			
			VStack {
				Text(card.title)
					.font(.largeTitle)
					.fontWeight(.heavy)
					.foregroundColor(.white)
					.multilineTextAlignment(.center)
				
				Text(card.headline)
					.fontWeight(.light)
					.foregroundColor(.white)
					.italic()
			} // VStack
			.offset(y: -218)
			
			Button(action: {
				playSound(sound: "sound-chime", type: "mp3")
			}) {
				HStack {
					Text(card.callToAction.uppercased())
						.fontWeight(.heavy)
						.foregroundColor(.white)
						.accentColor(.white)
					
					Image(systemName: "arrow.right.circle")
						.font(.title)
						.fontWeight(.medium)
						.accentColor(.white)
				} // HStack
				.padding(.vertical)
				.padding(.horizontal, 24)
				.background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
				.clipShape(Capsule())
				.shadow(
					color: Color("ColorShadow"),
					radius: 6, x: 0, y: 3
				)
				
			} // Button
			.offset(y: 210)
			
		} // ZStack
		.frame(width: 335, height: 545)
		.background(
			LinearGradient(
				gradient: Gradient(colors: card.gradientColors),
				startPoint: .top,
				endPoint: .bottom
			)
		)
		.cornerRadius(16)
		.shadow(radius: 8)
	}
}


// MARK: - preview

struct CardView_Previews: PreviewProvider {
	static var previews: some View {
		CardView(card: cardData[1])
			.previewLayout(.sizeThatFits)
	}
}
