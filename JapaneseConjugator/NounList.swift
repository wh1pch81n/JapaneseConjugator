//
//  NounList.swift
//  JapaneseConjugator
//
//  Created by Derrick Ho on 9/30/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import Foundation

class JapaneseNoun {
	let japanese: NounString
	let meaning: String
	init(japanese: NounString, meaning: String) {
		self.japanese = japanese
		self.meaning = meaning
	}
}

class JapaneseProperNoun: JapaneseNoun {
	
}

let properNounList: [JapaneseProperNoun] = [
]

let nounList: [JapaneseNoun] = [
]

extension NounString {
	var english: String {
		switch self {
		case .くうこう:
			return "Airport"
		case .ひこうき:
			return "airplane"
		case .ターミナル:
			return "(airplane) terminal"
		case .ゲート:
			return "gate"
		case .パスポート:
			return "passport"
		case .がいこくじん:
			return "Foreigner"
		case .がいじん:
			return "Outsider, foreigner"
		case .ばんごう:
			return "number"
		}
	}
}

extension ProperNounString {
	var english: String {
		switch self {
		case .なりたくうこう:
			return "Narita Airport"
		case .ぜいかん:
			return "Customs"
		}
	}
}


