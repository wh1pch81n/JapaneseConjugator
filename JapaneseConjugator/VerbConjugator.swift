//
//  VerbConjugator.swift
//  JapaneseConjugator
//
//  Created by Derrick  Ho on 1/18/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import Foundation
/*
protocol ConjugatedVerb {
}

protocol Verb {
	var kanji: VerbStrings { get }
	var furigana: VerbStrings { get }
	var isGodan: Bool { get }
}

typealias Syllabaries = (
	kanji: String,
	furigana: String
)
*/
func table(row: String, vowel: String) -> String {
	let path = Bundle.main.path(forResource: "GodanChart", ofType: "plist")!
	let d = NSDictionary(contentsOfFile: path)! as! Dictionary<String, Dictionary<String, String>>
	return d[row]![vowel]!
}

//func ==(lhs: JapaneseVerb, rhs: JapaneseVerb) -> Bool {
//	return lhs.kanji == rhs.kanji
//}
/*
struct JapaneseVerb: Verb, Hashable {
	let kanji: VerbStrings
	let furigana: VerbStrings
	let isGodan: Bool
	var meaning: String
	var comments: String = ""
	var example: String = ""
	
	init(kanji: VerbStrings, furigana: VerbStrings, meaning: String, isGodan: Bool) {
		self.kanji = kanji
		self.furigana = furigana
		self.meaning = meaning
		self.isGodan = isGodan
	}
	
	var hashValue: Int { return kanji.hashValue }
	
	func splitLast(_ str: VerbStrings) -> (String, String) {
		return splitLast(str.rawValue)
	}
	
	func splitLast(_ str: String) -> (String, String) {
		let k = str as NSString
		
		return (
			k.substring(to: k.length - 1),
			k.substring(from: k.length - 1)
		)
	}
	
	func plain_Form() -> Syllabaries {
		return (
			kanji: kanji.rawValue,
			furigana: furigana.rawValue
		)
	}
	
	func plain_NegativeForm() -> Syllabaries {
		let (prefix, midfix) = splitLast(self.kanji)
		let (prefix2, midfix2) = splitLast(self.furigana)
		let suffix = "ない"
		if (isGodan) {
			return (
				kanji: prefix + table(row: midfix, vowel: "a") + suffix,
				furigana: prefix2 + table(row: midfix2, vowel: "a") + suffix
			)
		} else {
			return (
				kanji: prefix + suffix,
				furigana: prefix2 + suffix
			)
		}
	}
	
	func plain_LetsForm() -> Syllabaries {
		let (prefix, midfix) = splitLast(self.kanji)
		let (prefix2, midfix2) = splitLast(self.furigana)
		let suffix = "う"
		if (isGodan) {
			return (
				kanji: prefix + table(row: midfix, vowel: "o") + suffix,
				furigana: prefix2 + table(row: midfix2, vowel: "o") + suffix
			)
		} else {
			let midfix = "よ"
			return (
				kanji: prefix + midfix + suffix,
				furigana: prefix2 + midfix + suffix
			)
		}
	}
	
	/// Plain command form
	func te_Form() -> Syllabaries {
		let (prefix, midfix) = splitLast(self.kanji)
		let (prefix2, _) = splitLast(self.furigana)
		if case VerbStrings.いく = self.furigana {
			return (
				kanji: "行って",
				furigana: "いって"
			)
		} else if case VerbStrings.する = self.furigana {
			return (
				kanji: "して",
				furigana: "して"
			)
		} else if (isGodan) {
			let suffix: String
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
			return (
				kanji: prefix + suffix,
				furigana: prefix2 + suffix
			)
		} else {
			let suffix = "て"
			return (
				kanji: prefix + suffix,
				furigana: prefix2 + suffix
			)
		}
	}
	
	/// Plain past tense
	func ta_Form() -> Syllabaries {
		let (prefix, midfix) = splitLast(self.kanji)
		let (prefix2, _) = splitLast(self.furigana)
		if self.furigana == .いく {
			return (
				kanji: "行った",
				furigana: "いった"
			)
		} else if (self.furigana == .する) {
			return (
				kanji: "した",
				furigana: "した"
			)
		} else if (isGodan) {
			let suffix: String
			switch midfix {
			case "う", "つ", "る": // Use similar place in the mouth. Obseve how tsu and ru use that regiod of the gum behind the from teeth followed by o of the lips
				suffix = "った"
			case "ぶ", "む", "ぬ": // use a similar place in the mouth.  Observe how mu and bu both use the lip.  Nu doesn't but n and m are similar.
				suffix = "んだ"
			case "く": // notice how it uses the back portion of the mouth.
				suffix = "いた"
			case "ぐ": // notice how it uses the back portion of the mouth.
				suffix = "いだ"
			case "す": //
				suffix = "した"
			default:
				assert(false)
				suffix = ""
			}
			return (
				kanji: prefix + suffix,
				furigana: prefix2 + suffix
			)
		} else {
			let suffix = "た"
			return (
				kanji: prefix + suffix,
				furigana: prefix2 + suffix
			)
		}
	}
*/
	/// below not done yet
	/*
	func polite_Form() -> Syllabaries {
		if (isGodan) {
			return (
				kanji: kanji,
				furigana: furigana
			)
		} else {
			return (
				kanji: kanji,
				furigana: furigana
			)
		}
	}
	
	func polite_NegativeForm() -> Syllabaries {
		if (isGodan) {
			return (
				kanji: kanji,
				furigana: furigana
			)
		} else {
			return (
				kanji: kanji,
				furigana: furigana
			)
		}
	}
	
	func polite_LetsForm() -> Syllabaries {
		if (isGodan) {
			return (
				kanji: kanji,
				furigana: furigana
			)
		} else {
			return (
				kanji: kanji,
				furigana: furigana
			)
		}
	}
*/
//}
