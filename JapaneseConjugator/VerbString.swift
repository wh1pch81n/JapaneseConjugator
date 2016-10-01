//
//  VerbString.swift
//  JapaneseConjugator
//
//  Created by Derrick Ho on 9/30/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import Foundation

func splitLast(_ str: String) -> (prefix: String, midfix: String) {
	let k = str as NSString
	
	return (
		k.substring(to: k.length - 1),
		k.substring(from: k.length - 1)
	)
}

protocol English {
	var english: String { get }
}
protocol Verb {
	func te_form() -> String
	func ta_form() -> String
	func nai_form() -> String
	func masu_form() -> String
	/*
	lets form aka oh form
	lets form polite aka mashou
	masen form
	
	*/
}
protocol IrregularVerb: Verb, English {}
protocol RegularVerb: Verb, English {}
protocol VariableVerb: Verb, English {}

extension IrregularVerbStrings {
	func ta_form() -> String {
		switch self {
		case .いく:
			return "いった"
		case .行く:
			return "行った"
		case .する:
			return "した"
		}
	}
	func te_form() -> String {
		switch self {
		case .いく:
			return "いって"
		case .行く:
			return "行って"
		case .する:
			return "して"
		}
	}
	func nai_form() -> String {
		let (prefix, midfix) = splitLast(rawValue)
		switch self {
		case .いく, .行く:
			return prefix + table(row: midfix, vowel: "a") + "ない"
		case .する:
			return table(row: prefix, vowel: "a") + "ない"
		}
	}
	func masu_form() -> String {
		let (prefix, midfix) = splitLast(rawValue)
		switch self {
		case .いく, .行く:
			return prefix + table(row: midfix, vowel: "i") + "ます"
		case .する:
			return table(row: prefix, vowel: "i") + "ます"
		}
	}
}

extension RegularVerbStrings {
	func ta_form() -> String {
		return splitLast(self.rawValue).prefix + "た"
	}
	func te_form() -> String {
		return splitLast(self.rawValue).prefix + "て"
	}
	func nai_form() -> String {
		return splitLast(rawValue).prefix + "ない"
	}
	func masu_form() -> String {
		return splitLast(rawValue).prefix + "ます"
	}
}

extension VariableVerbStrings {
	func te_form() -> String {
		let (prefix, midfix) = splitLast(self.rawValue)
		var suffix: String
		switch midfix {
		case "う", "つ", "る":
			suffix = "って"
		case "ぶ", "む", "ぬ":
			suffix = "んで"
		case "く":
			suffix = "いて"
		case "ぐ":
			suffix = "いで"
		case "す":
			suffix = "して"
		default:
			assert(false)
			suffix = ""
		}
		return prefix + suffix
	}
	func ta_form() -> String {
		let (prefix, midfix) = splitLast(self.rawValue)
		var suffix: String
		switch midfix {
		case "う", "つ", "る":
			suffix = "った"
		case "ぶ", "む", "ぬ":
			suffix = "んだ"
		case "く":
			suffix = "いた"
		case "ぐ":
			suffix = "いだ"
		case "す":
			suffix = "した"
		default:
			assert(false)
			suffix = ""
		}
		return prefix + suffix
	}
	func nai_form() -> String {
		let (prefix, midfix) = splitLast(rawValue)
		return prefix + table(row: midfix, vowel: "a") + "ない"
	}
	func masu_form() -> String {
		let (prefix, midfix) = splitLast(rawValue)
		return prefix + table(row: midfix, vowel: "i") + "ます"
	}
}

enum IrregularVerbStrings: String, IrregularVerb {
	case いく, 行く
	case する
}

enum VariableVerbStrings: String, VariableVerb {
	case かく
}

enum RegularVerbStrings: String, RegularVerb {
	case いる
	case 見る, みる
	case 見せる, みせる
	case 食べる, たべる
	case 出る, でる
	case うける
	case きる
	case はめる
	case はれる
}
