//
//  VerbList.swift
//  JapaneseConjugator
//
//  Created by Derrick Ho on 9/30/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import Foundation

protocol Withable {}
extension Withable {
	mutating func with(bootstrap: (_ obj: inout Self) -> ()) -> Self {
		bootstrap(&self)
		return self
	}
}


extension NSObject: Withable {}
extension JapaneseVerb: Withable {}

enum VerbStrings: String {
	case いる
	case いく
	case する
	case 見る, みる
	case 見せる, みせる
	case 食べる, たべる
	case 出る, でる
	case うける
	case きる
	case はめる
	case はれる
}

let verbList: [JapaneseVerb] = [
	JapaneseVerb(kanji: .食べる, furigana: .たべる, meaning: "to eat", isGodan: false)
]
