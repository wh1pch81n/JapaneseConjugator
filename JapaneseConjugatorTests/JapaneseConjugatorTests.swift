//
//  JapaneseConjugatorTests.swift
//  JapaneseConjugatorTests
//
//  Created by Derrick  Ho on 1/18/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import XCTest
@testable import JapaneseConjugator

func == <T:Equatable> (tuple1:(T,T),tuple2:(T,T)) -> Bool
{
	return (tuple1.0 == tuple2.0) && (tuple1.1 == tuple2.1)
}

class JapaneseConjugatorTests: XCTestCase {
	
	var testCases = [
		JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("話す","はなす")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("話そう", "はなそう")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("話して", "はなして")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("話した", "はなした")
			),
//			(
//				JapaneseVerb.polite_Form,
//				("話します", "はなします")
//			), (
//				JapaneseVerb.polite_NegativeForm,
//				("話しません", "はなしません")
//			)
		]
	]
	
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
	override func tearDown() {
		super.tearDown()
	}
	
	func test_testCases() {
		testCases.forEach { (input, arr_value) in
			arr_value.enumerate().forEach {
				let (conjugation_fn, answer_syl) = $0.element
				let gen = conjugation_fn(input)()
				XCTAssert(gen == answer_syl, "Failed on \($0.index) expected \(answer_syl), got \(gen)")
			}
		}
	}
	
}
