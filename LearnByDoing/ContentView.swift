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
		CardView()
	}
}


// MARK: - preview

struct 	ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.previewDevice("iPhone 16 Pro")
	}
}
