//
//  VerbList.swift
//  JapaneseConjugator
//
//  Created by Derrick Ho on 9/30/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import Foundation

//let verbList: [JapaneseVerb] = [
//	JapaneseVerb(kanji: .食べる, furigana: .たべる, meaning: "to eat", isGodan: false)
//]

extension IrregularVerbStrings {
	var english: String {
		switch self {
		case .いく, .行く:
			return "to go"
		case .する:
			return "to do; to interact"
		}
	}
}

extension VariableVerbStrings {
	var english: String {
		switch self {
		case .かく:
			return "to write"
		}
	}
}

extension RegularVerbStrings {
	var english: String {
		switch self {
		case .いる:
			return "to exist (animates)"
		case .見る, .みる:
			return "to see"
		case .見せる, .みせる:
			return "to show"
		case .食べる, .たべる:
			return "to eat"
		case .出る, .でる:
			return "to come out; to leave"
		case .うける:
			return "to recieve"
		case .きる:
			return "to wear"
		case .はめる:
			return "to put on by wrapping around (like a belt)"
		case .はれる:
			return "to clear up (i.e. the weather cleared up)"
		}
	}
}
