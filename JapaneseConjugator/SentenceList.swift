//
//  SentenceList.swift
//  JapaneseConjugator
//
//  Created by Derrick Ho on 9/30/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import Foundation
/*
enum SentenceEnum {
	case AsForProperNounWithDurationAppliedToObjectWithAction(properNoun: String, duration: String, object: String, action: JapaneseVerb)
}

let JapaneseSentences: [SentenceEnum] =
[
	SentenceEnum.AsForProperNounWithDurationAppliedToObjectWithAction(properNoun: "ジョンさん", duration: "まいにち", object: "テレビ", action: JapaneseVerb(kanji: "", furigana: "", isGodan: true))

]
*/

class JapaneseSentence {
	let japanese: SentenceString
	let meaning: String
	init(japanese: SentenceString, meaning: String) {
		self.japanese = japanese
		self.meaning = meaning
	}
}

let sentenceList: [JapaneseSentence] = [
]

extension SentenceString {
	var english: String {
		switch self {
		case .あそこにぜいかんのひとがいます:
			return "There is a customs officer (person) over there"
		case .ジョンさんはパスポートをみせる:
			return "John shows his passport"
		case .パスポートをみせてください:
			return "Please show (me) (your) passport"
		case .ジョンさんはぜいかんのひとにパスポートをみせた:
			return "John showed his passport to the Customs Person (Customs Officer)"
		case .なんばん:
			return "Which number?"
		}
	}
}

