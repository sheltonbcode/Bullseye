//
//  TextViews.swift
//  Bullseye
//
//  Created by Shelton Brown on 3/25/23.
//

import SwiftUI

struct InstructionText: View {
	var text: String
		
	var body: some View {
		Text(text.uppercased())
			.bold()
			.multilineTextAlignment(.center)
			.lineSpacing(4.0)
			.font(.footnote)
			.kerning(2.0)
			.foregroundColor(Color("TextColor"))
	}
}

struct BigNumberText: View {
	var text: String
	
	var body: some View {
		Text(text)
			.kerning(-1.0)
			.font(.largeTitle)
			.fontWeight(.black)
			.foregroundColor(Color("TextColor"))
	}
}

struct TextViews_Previews: PreviewProvider {
	static var previews: some View {
		VStack {
			InstructionText(text: "Instructions")
			BigNumberText(text: "999")
		}
	}
}