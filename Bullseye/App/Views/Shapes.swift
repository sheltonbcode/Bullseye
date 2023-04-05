//
//  Shapes.swift
//  Bullseye
//
//  Created by Shelton Brown on 4/5/23.
//

import SwiftUI

struct Shapes: View {
	var body: some View {
		VStack {
			Circle()
				.inset(by: 10)
				.strokeBorder(Color.blue, lineWidth: 20)
				.frame(width: 200.0, height: 100)
				.background(Color.green)
			RoundedRectangle(cornerRadius: 20)
				.fill(Color.blue)
				.frame(width: 200.0, height: 100)
			Capsule()
				.fill(Color.blue)
				.frame(width: 200.0, height: 100)
			Ellipse()
				.fill(Color.blue)
				.frame(width: 200.0, height: 100)
		}
	}
}

struct Shapes_Previews: PreviewProvider {
	static var previews: some View {
		Shapes()
	}
}
