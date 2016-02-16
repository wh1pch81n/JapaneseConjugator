//
//  VerbConjugator.swift
//  JapaneseConjugator
//
//  Created by Derrick  Ho on 1/18/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import Foundation

protocol ConjugatedVerb {
}

protocol Verb {
	var kanji: String { get }
	var furigana: String { get }
	var isGodan: Bool { get }
}

typealias Syllabaries = (
	kanji: String,
	furigana: String
)

protocol Conjugator  {
	func plain_Form() -> Syllabaries
	func plain_NegativeForm() -> Syllabaries
	func plain_LetsForm() -> Syllabaries
	/// Plain command form
	func te_Form() -> Syllabaries
	
	/// Plain past tense
	func ta_Form() -> Syllabaries
	
//	func polite_Form() -> Syllabaries
//	func polite_NegativeForm() -> Syllabaries
//	func polite_LetsForm() -> Syllabaries

}

let table = [
	
	"す" : ["a":"さ", "e":"せ", "i":"し", "o":"そ", "u":"す"],
	"る" : ["a":"ら", "e":"れ", "i":"り", "o":"ろ", "u":"る"],
	
	"よ" : ["a":"や", "o":"よ", "u":"ゆ"],
	
]

func ==(lhs: JapaneseVerb, rhs: JapaneseVerb) -> Bool {
	return lhs.kanji == rhs.kanji
}

struct JapaneseVerb: Verb, Conjugator, Hashable {
	let kanji: String
	let furigana: String
	let isGodan: Bool
	
	var hashValue: Int { return kanji.hashValue }
	
	func splitLast(str: String) -> (String, String) {
		let k = str as NSString
		
		return (
			k.substringToIndex(k.length - 1),
			k.substringFromIndex(k.length - 1)
		)
	}
	
	func plain_Form() -> Syllabaries {
		return (
			kanji,
			furigana
		)
	}
	
	func plain_NegativeForm() -> Syllabaries {
		let (prefix, midfix) = splitLast(self.kanji)
		let (prefix2, midfix2) = splitLast(self.furigana)
		let suffix = "ない"
		if (isGodan) {
			return (
				kanji: prefix + table[midfix]!["a"]! + suffix,
				furigana: prefix2 + table[midfix2]!["a"]! + suffix
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
				kanji: prefix + table[midfix]!["o"]! + suffix,
				furigana: prefix2 + table[midfix2]!["o"]! + suffix
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
		if (isGodan) {
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
				suffix = "<undefined>"
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
		if (isGodan) {
			let suffix: String
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
				suffix = "<undefined>"
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
	
	/// below not done yet
	func polite_Form() -> Syllabaries {
		if (isGodan) {
			return (
				kanji,
				furigana
			)
		} else {
			return (
				kanji,
				furigana
			)
		}
	}
	
	func polite_NegativeForm() -> Syllabaries {
		if (isGodan) {
			return (
				kanji,
				furigana
			)
		} else {
			return (
				kanji,
				furigana
			)
		}
	}
	
	func polite_LetsForm() -> Syllabaries {
		if (isGodan) {
			return (
				kanji,
				furigana
			)
		} else {
			return (
				kanji,
				furigana
			)
		}
	}

}