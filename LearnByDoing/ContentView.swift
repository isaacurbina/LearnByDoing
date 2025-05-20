//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Isaac Urbina on 5/19/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(alignment: .center, spacing: 20) {
				ForEach(0..<6) {item in
					CardView()
				}
			} // HStack
		} // ScrollView
	}
}


// MARK: - preview

struct 	ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.previewDevice("iPhone 16 Pro")
	}
}
