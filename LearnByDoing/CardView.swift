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
	var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
	
	@State private var fadeIn: Bool = false
	@State private var moveDownward: Bool = false
	@State private var moveUpward: Bool = false
	
	
	// MARK: - body
	
	var body: some View {
		ZStack {
			Image(card.imageName)
				.opacity(fadeIn ? 1.0 : 0.0)
			
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
			.offset(y: moveDownward ? -218 : -300)
			
			Button(action: {
				playSound(sound: "sound-chime", type: "mp3")
				hapticImpact.impactOccurred()
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
			.offset(y: moveUpward ? 210 : 300)
			
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
		.onAppear() {
			withAnimation(.linear(duration: 1.2)) {
				fadeIn.toggle()
			}
			withAnimation(.linear(duration: 0.8)) {
				moveDownward.toggle()
				moveUpward.toggle()
			}
		}
	}
}


// MARK: - preview

struct CardView_Previews: PreviewProvider {
	static var previews: some View {
		CardView(card: cardData[1])
			.previewLayout(.sizeThatFits)
	}
}
