//
//  JapaneseConjugatorTests.swift
//  JapaneseConjugatorTests
//
//  Created by Derrick  Ho on 1/18/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import XCTest
@testable import JapaneseConjugator

class JapaneseConjugatorTests: XCTestCase {
	
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
	override func tearDown() {
		super.tearDown()
	}
	
	func test_godanVerbPlain() {
		var i = JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)
		XCTAssertEqual(i.plain_Form().kanji, i.kanji)
		XCTAssertEqual(i.plain_Form().furigana, i.furigana)
	}
	
	func test_godanVerbPlainNegative() {
		var i = JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)
		XCTAssertEqual(i.plain_NegativeForm().kanji, "話さない")
		XCTAssertEqual(i.plain_NegativeForm().furigana, "はなさない")
	}
	
	func test_godanVerbPlainLets() {
		var i = JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)
		XCTAssertEqual(i.plain_LetsForm().kanji, "話そう")
		XCTAssertEqual(i.plain_LetsForm().furigana, "はなそう")
	}
	
	func test_godanVerbPlainTe() {
		var i = JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)
		XCTAssertEqual(i.te_Form().kanji, "話して")
		XCTAssertEqual(i.te_Form().furigana, "はなして")
	}
	
	func test_godanVerbPlainPastTense() {
		var i = JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)
		XCTAssertEqual(i.ta_Form().kanji, "話した")
		XCTAssertEqual(i.ta_Form().furigana, "はなした")
	}
	
//	func test_godanVerbPolite() {
//		var i = JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)
//		XCTAssertEqual(i.polite_Form().kanji, "話します")
//		XCTAssertEqual(i.polite_Form().furigana, "はなします")
//	}
//
//	func test_godanVerbPoliteNegative() {
//		var i = JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)
//		XCTAssertEqual(i.polite_NegativeForm().kanji, "話しません")
//		XCTAssertEqual(i.polite_NegativeForm().furigana, "はなしません")
//	}
	
}
