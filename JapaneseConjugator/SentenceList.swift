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

enum SentenceString: String {
	case あそこにぜいかんのひとがいます
	case ジョンさんはパスポートをみせる
	case パスポートをみせてください
	case ジョンさんはぜいかんのひとにパスポートをみせた
}


let sentenceList: [JapaneseSentence] = [
	JapaneseSentence(japanese: .パスポートをみせてください, meaning: "Please show me your passport"),
	JapaneseSentence(japanese: .あそこにぜいかんのひとがいます, meaning: "There is a customs officer (\"person\") over there"),
	JapaneseSentence(japanese: .ジョンさんはパスポートをみせる, meaning: "John shows his passport"),
]

enum NounString: String {
	case くうこう
	case なりたくうこう
	case ひこうき
	case ターミナル
	case ゲート
	case パスポート
	case ぜいかん
	case がいこくじん
	case がいじん
	case ばんごう
	case _ばん
	case なんばん
}

let properNounList: [JapaneseProperNoun] = [
	JapaneseProperNoun(japanese: .なりたくうこう, meaning: "Narita Airport"),
	JapaneseProperNoun(japanese: .ぜいかん, meaning: "Customs"),

]

let nounList: [JapaneseNoun] = [
	JapaneseNoun(japanese: .なんばん, meaning: "Which number"),
	JapaneseNoun(japanese: ._ばん, meaning: "Number suffix"),
	JapaneseNoun(japanese: .ばんごう, meaning: "Number"),
	JapaneseNoun(japanese: .がいこくじん, meaning: "Foreigner"),
	JapaneseNoun(japanese: .がいじん, meaning: "Outsider, foreigner"),
	JapaneseNoun(japanese: .くうこう, meaning: "Airport"),
	JapaneseNoun(japanese: .ひこうき, meaning: "Airplane"),
	JapaneseNoun(japanese: .ターミナル, meaning: "Terminal"),
	JapaneseNoun(japanese: .ゲート, meaning: "gate"),
	JapaneseNoun(japanese: .パスポート, meaning: "passport"),
]

