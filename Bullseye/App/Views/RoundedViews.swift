//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Shelton Brown on 4/5/23.
//

import SwiftUI

struct RoundedImageViewStroked: View {
	var systemName: String
	
    var body: some View {
			Image(systemName: systemName)
				.font(.title)
				.foregroundColor(Color("TextColor"))
				.frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
				.overlay(
				Circle()
					.strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokedWidth)
				)
    }
}

struct RoundedImageViewFilled: View {
	var systemName: String
	
		var body: some View {
			Image(systemName: systemName)
				.font(.title)
				.foregroundColor(Color("ButtonFilledTextColor"))
				.frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
				.background (
				Circle()
					.fill(Color("ButtonFilledBackgroundColor"))
				)
		}
}

struct RoundRectTextView: View {
	var text: String
	
		var body: some View {
			Text(text)
				.kerning(-0.2)
				.bold()
				.font(.title3)
				.frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
				.foregroundColor(Color("TextColor"))
				.overlay(
					RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
						.stroke(lineWidth: Constants.General.strokedWidth)
						.foregroundColor(Color("ButtonStrokeColor")))
		}
}

struct PreviewView: View {
	var body: some View {
		VStack(spacing: 10) {
			RoundedImageViewFilled(systemName: "arrow.counterclockwise")
			RoundedImageViewStroked(systemName: "list.dash")
			RoundRectTextView(text: "100")
		}
	}
}

struct RoundedViews_Previews: PreviewProvider {
	static var previews: some View {
			PreviewView()
			PreviewView()
				.preferredColorScheme(.dark)
		}
	}
