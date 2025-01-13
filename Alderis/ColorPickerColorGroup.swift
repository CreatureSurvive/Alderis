//
//  ColorGroup.swift
//  Alderis
//
//  Created by Dana Buehre on 1/15/25.
//  Copyright © 2025 HASHBANG Productions. All rights reserved.
//

import UIKit

internal struct ColorGroup {
	let title: String
	let colors: [Color]

	var count: Int {
		colors.count
	}

	static var defaultLightSystemColorsGroup: ColorGroup = {
		return Self(title: "LIGHT SYSTEM COLORS", colors: [
			Color(red: 1, green: 0.23137254901960785, blue: 0.18823529411764706, alpha: 1) /*"Red Light"*/,
			Color(red: 1, green: 0.5843137254901961, blue: 0, alpha: 1) /*"Orange Light"*/,
			Color(red: 1, green: 0.8, blue: 0, alpha: 1) /*"Yellow Light"*/,
			Color(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724, alpha: 1) /*"Green Light"*/,
			Color(red: 0, green: 0.7803921568627451, blue: 0.7450980392156863, alpha: 1) /*"Mint Light"*/,
			Color(red: 0.18823529411764706, green: 0.6901960784313725, blue: 0.7803921568627451, alpha: 1) /*"Teal Light"*/,
			Color(red: 0.19607843137254902, green: 0.6784313725490196, blue: 0.9019607843137255, alpha: 1) /*"Cyan Light"*/,
			Color(red: 0, green: 0.47843137254901963, blue: 1, alpha: 1) /*"Blue Light"*/,
			Color(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098, alpha: 1) /*"Indigo Light"*/,
			Color(red: 0.6862745098039216, green: 0.3215686274509804, blue: 0.8705882352941177, alpha: 1) /*"Purple Light"*/,
			Color(red: 1, green: 0.17647058823529413, blue: 0.3333333333333333, alpha: 1) /*"Pink Light"*/,
			Color(red: 0.6352941176470588, green: 0.5176470588235295, blue: 0.3686274509803922, alpha: 1) /*"Brown Light"*/
		])
	}()
	static var defaultDarkSystemColorsGroup: ColorGroup = {
		return Self(title: "DARK SYSTEM COLORS", colors: [
			Color(red: 1, green: 0.27058823529411763, blue: 0.22745098039215686, alpha: 1) /*"Red Dark"*/,
			Color(red: 1, green: 0.6235294117647059, blue: 0.0392156862745098, alpha: 1) /*"Orange Dark"*/,
			Color(red: 1, green: 0.8392156862745098, blue: 0.0392156862745098, alpha: 1) /*"Yellow Dark"*/,
			Color(red: 0.18823529411764706, green: 0.8196078431372549, blue: 0.34509803921568627, alpha: 1) /*"Green Dark"*/,
			Color(red: 0.38823529411764707, green: 0.9019607843137255, blue: 0.8862745098039215, alpha: 1) /*"Mint Dark"*/,
			Color(red: 0.25098039215686274, green: 0.7843137254901961, blue: 0.8784313725490196, alpha: 1) /*"Teal Dark"*/,
			Color(red: 0.39215686274509803, green: 0.8235294117647058, blue: 1, alpha: 1) /*"Cyan Dark"*/,
			Color(red: 0.0392156862745098, green: 0.5176470588235295, blue: 1, alpha: 1) /*"Blue Dark"*/,
			Color(red: 0.3686274509803922, green: 0.3607843137254902, blue: 0.9019607843137255, alpha: 1) /*"Indigo Dark"*/,
			Color(red: 0.7490196078431373, green: 0.35294117647058826, blue: 0.9490196078431372, alpha: 1) /*"Purple Dark"*/,
			Color(red: 1, green: 0.21568627450980393, blue: 0.37254901960784315, alpha: 1) /*"Pink Dark"*/,
			Color(red: 0.6745098039215687, green: 0.5568627450980392, blue: 0.40784313725490196, alpha: 1) /*"Brown Dark"*/
		])
	}()

	static var defaultGrayColorsGroup: ColorGroup = {
		return Self(title: "LIGHT GRAY COLORS", colors: [
			Color(red: 0.5568627450980392, green: 0.5568627450980392, blue: 0.5764705882352941, alpha: 1) /*"Gray Light"*/,
			Color(red: 0.6823529411764706, green: 0.6823529411764706, blue: 0.6980392156862745, alpha: 1) /*"Gray2 Light"*/,
			Color(red: 0.7803921568627451, green: 0.7803921568627451, blue: 0.8, alpha: 1) /*"Gray3 Light"*/,
			Color(red: 0.8196078431372549, green: 0.8196078431372549, blue: 0.8392156862745098, alpha: 1) /*"Gray4 Light"*/,
			Color(red: 0.8980392156862745, green: 0.8980392156862745, blue: 0.9176470588235294, alpha: 1) /*"Gray5 Light"*/,
			Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1) /*"Gray6 Light"*/
		])
	}()

	static var defaultDarkGrayColorsGroup: ColorGroup = {
		return Self(title: "Dark GRAY COLORS", colors: [
			Color(red: 0.5568627450980392, green: 0.5568627450980392, blue: 0.5764705882352941, alpha: 1) /*"Gray Dark"*/,
			Color(red: 0.38823529411764707, green: 0.38823529411764707, blue: 0.4, alpha: 1) /*"Gray2 Dark"*/,
			Color(red: 0.2823529411764706, green: 0.2823529411764706, blue: 0.2901960784313726, alpha: 1) /*"Gray3 Dark"*/,
			Color(red: 0.22745098039215686, green: 0.22745098039215686, blue: 0.23529411764705882, alpha: 1) /*"Gray4 Dark"*/,
			Color(red: 0.17254901960784313, green: 0.17254901960784313, blue: 0.1803921568627451, alpha: 1) /*"Gray5 Dark"*/,
			Color(red: 0.10980392156862745, green: 0.10980392156862745, blue: 0.11764705882352941, alpha: 1) /*"Gray6 Dark"*/
		])
	}()

	static var defaultLightLabelColorsGroup: ColorGroup = {
		return Self(title: "LIGHT LABEL COLORS", colors: [
			Color(red: 0, green: 0, blue: 0, alpha: 1) /*"Label Light"*/,
			Color(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.6) /*"Secondary Light"*/,
			Color(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.2980392156862745) /*"Tertiary Light"*/,
			Color(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.17647058823529413) /*"Quaternary Light"*/,
			Color(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.2980392156862745) /*"Placeholder Light"*/,
			Color(red: 0, green: 0.47843137254901963, blue: 1, alpha: 1) /*"Link Light"*/
		])
	}()

	static var defaultDarkLabelColorsGroup: ColorGroup = {
		return Self(title: "DARK LABEL COLORS", colors: [
			Color(red: 1.0000001192092896, green: 1.0000001192092896, blue: 1.0000001192092896, alpha: 1) /*"Label Dark"*/,
			Color(red: 0.9215686274509803, green: 0.9215686274509803, blue: 0.9607843137254902, alpha: 0.6) /*"Secondary Dark"*/,
			Color(red: 0.9215686274509803, green: 0.9215686274509803, blue: 0.9607843137254902, alpha: 0.2980392156862745) /*"Tertiary Dark"*/,
			Color(red: 0.9215686274509803, green: 0.9215686274509803, blue: 0.9607843137254902, alpha: 0.1568627450980392) /*"Quaternary Dark"*/,
			Color(red: 0.9215686274509803, green: 0.9215686274509803, blue: 0.9607843137254902, alpha: 0.2980392156862745) /*"Placeholder Dark"*/,
			Color(red: 0.03529411764705882, green: 0.5176470588235295, blue: 1, alpha: 1) /*"Link Dark"*/
		])
	}()

	static var defaultLightSeparatorColorsGroup: ColorGroup = {
		return Self(title: "LIGHT SEPARATOR COLORS", colors: [
			Color(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.29) /*"Separator Light"*/,
			Color(red: 0.7764705882352941, green: 0.7764705882352941, blue: 0.7843137254901961, alpha: 1) /*"Opaque Separator Light"*/
		])
	}()

	static var defaultDarkSeparatorColorsGroup: ColorGroup = {
		return Self(title: "DARK SEPARATOR COLORS", colors: [
			Color(red: 0.32941176470588235, green: 0.32941176470588235, blue: 0.34509803921568627, alpha: 0.6) /*"Separator Dark"*/,
			Color(red: 0.2196078431372549, green: 0.2196078431372549, blue: 0.22745098039215686, alpha: 1) /*"Opaque Separator Dark"*/
		])
	}()

	static var defaultLightFillColorsGroup: ColorGroup = {
		return Self(title: "LIGHT FILL COLORS", colors: [
			Color(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.2) /*"Fill Light"*/,
			Color(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.16) /*"Secondary Fill Light"*/,
			Color(red: 0.4627450980392157, green: 0.4627450980392157, blue: 0.5019607843137255, alpha: 0.12) /*"Tertiary Fill Light"*/,
			Color(red: 0.4549019607843137, green: 0.4549019607843137, blue: 0.5019607843137255, alpha: 0.08) /*"Quaternary Fill Light"*/
		])
	}()

	static var defaultDarkFillColorsGroup: ColorGroup = {
		return Self(title: "DARK FILL COLORS", colors: [
			Color(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.36) /*"Fill Dark"*/,
			Color(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.32) /*"Secondary Fill Dark"*/,
			Color(red: 0.4627450980392157, green: 0.4627450980392157, blue: 0.5019607843137255, alpha: 0.24) /*"Tertiary Fill Dark"*/,
			Color(red: 0.4627450980392157, green: 0.4627450980392157, blue: 0.5019607843137255, alpha: 0.18) /*"Quaternary Fill Dark"*/
		])
	}()

	static var defaultLightBackgroundColorsGroup: ColorGroup = {
		return Self(title: "LIGHT BACKGROUND COLORS", colors: [
			Color(red: 1, green: 1, blue: 1, alpha: 1) /*"Background Light"*/,
			Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1) /*"Secondary Background Light"*/,
			Color(red: 1, green: 1, blue: 1, alpha: 1) /*"Tertiary Background Light"*/,
			Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1) /*"Grouped Background Light"*/,
			Color(red: 1, green: 1, blue: 1, alpha: 1) /*"Secondary Grouped Background Light"*/,
			Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1) /*"Tertiary Grouped Background Light"*/
		])
	}()

	static var defaultDarkBackgroundColorsGroup: ColorGroup = {
		return Self(title: "DARK BACKGROUND COLORS", colors: [
			Color(red: 0, green: 0, blue: 0, alpha: 1) /*"Background Dark"*/,
			Color(red: 0.10980392156862745, green: 0.10980392156862745, blue: 0.11764705882352941, alpha: 1) /*"Secondary Background Dark"*/,
			Color(red: 0.17254901960784313, green: 0.17254901960784313, blue: 0.1803921568627451, alpha: 1) /*"Tertiary Background Dark"*/,
			Color(red: 0, green: 0, blue: 0, alpha: 1) /*"Grouped Background Dark"*/,
			Color(red: 0.10980392156862745, green: 0.10980392156862745, blue: 0.11764705882352941, alpha: 1) /*"Secondary Grouped Background Dark"*/,
			Color(red: 0.17254901960784313, green: 0.17254901960784313, blue: 0.1803921568627451, alpha: 1) /*"Tertiary Grouped Background Dark"*/
		])
	}()

	static var defaultStandardColorsGroup: ColorGroup = {
		return Self(title: "STANDARD COLORS", colors: [
			Color(red: 0.6666666666666666, green: 0.6666666666666666, blue: 0.6666666666666666, alpha: 1) /*"Light Gray"*/,
			Color(red: 0.5, green: 0.5, blue: 0.5, alpha: 1) /*"Gray"*/,
			Color(red: 0.3333333333333333, green: 0.3333333333333333, blue: 0.3333333333333333, alpha: 1) /*"Dark Gray"*/,
			Color(red: 0, green: 0, blue: 0, alpha: 1) /*"Black"*/,
			Color(red: 1, green: 1, blue: 1, alpha: 1) /*"White"*/,
			Color(red: 1, green: 0, blue: 0, alpha: 1) /*"Red"*/,
			Color(red: 1, green: 0.5, blue: 0, alpha: 1) /*"Orange"*/,
			Color(red: 1, green: 1, blue: 0, alpha: 1) /*"Yellow"*/,
			Color(red: 0, green: 1, blue: 0, alpha: 1) /*"Green"*/,
			Color(red: 0, green: 1, blue: 1, alpha: 1) /*"Cyan"*/,
			Color(red: 0, green: 0, blue: 1, alpha: 1) /*"Blue"*/,
			Color(red: 0.5, green: 0, blue: 0.5, alpha: 1) /*"Purple"*/,
			Color(red: 1, green: 0, blue: 1, alpha: 1) /*"Magenta"*/,
			Color(red: 0.6, green: 0.4, blue: 0.2, alpha: 1) /*"Brown"*/
		])
	}()

	static var defaultPrimaryColorsGroup: ColorGroup = {
		var colors = [Color]()
		for deg in stride(from: 0, to: 360, by: 15) {
			colors.append(.init(hue: 1 * CGFloat(deg) / 360, saturation: 1, brightness: 1, alpha: 1))
		}
		return Self(title: "PRIMARY COLORS", colors: colors)
	}()

	static var defaultHueColorsGroup: ColorGroup = {
		var colors = [Color]()
		for deg in stride(from: 0, to: 359, by: 2) {
			colors.append(.init(hue: 1 * CGFloat(deg) / 360, saturation: 0.8, brightness: 1, alpha: 1))
		}
		return Self(title: "HUE COLORS", colors: colors)
	}()
}
