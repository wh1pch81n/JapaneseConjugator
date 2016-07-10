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
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("話さない","はなさない")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("話そう", "はなそう")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("話して", "はなして")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("話した", "はなした")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("話します", "はなします")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("話しません", "はなしません")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("話しましょう", "はなしましょう")
			)
		],
		JapaneseVerb(kanji: "会う", furigana: "あう", isGodan:  true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("会う","あう")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("会わない","あわない")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("会おう", "あおう")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("会って", "あって")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("会った", "あった")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("会います", "あいます")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("会いません", "あいません")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("会いましょう", "あいましょう")
			)
		],
		JapaneseVerb(kanji: "かつ", furigana: "かつ", isGodan:  true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("勝つ","かつ")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("勝たない","かたない")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("勝とう", "かとう")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("勝って", "かって")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("勝った", "かった")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("勝ちます", "かちます")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("勝ちません", "かちません")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("勝ちましょう", "かちましょう")
			)
		],
		JapaneseVerb(kanji: "売る", furigana: "うる", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("売る","うる")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("売らない","うらない")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("売ろう", "うろう")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("売って", "うって")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("売った", "うった")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("売ります", "うります")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("売りません", "うりません")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("売りましょう", "うりましょう")
			)
		],
		
		JapaneseVerb(kanji: "遊ぶ", furigana:  "あそぶ", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("遊ぶ","あそぶ")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("遊ばない","あそばない")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("遊ぼう", "あそぼう")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("遊んで", "あそんで")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("遊んだ", "あそんだ")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("遊びます", "あそびます")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("遊びません", "あそびません")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("遊びましょう", "あそびましょう")
			)
		],
		JapaneseVerb(kanji: "飲む", furigana: "のむ", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("<##>", "<##>")
			)
		],
		/*nomu (to drink)
		飲ま	のま	noma	//plain negative
		飲み	のみ	nomi	//polite present tense
		飲む	のむ	nomu	//plain present tense
		飲め	のめ	nome	Base 4
		飲もう	のもう	nomou	//plain lets
		飲んで	のんで	nonde	Base "te"
		飲んだ	のんだ	nonda	Base "ta"
		*/
		
		JapaneseVerb(kanji: "死ぬ", furigana: "しぬ", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("<##>", "<##>")
			)
		],
		/*shinu (to die)
		死な	しな	shina	//plain negative
		死に	しに	shini	//polite present tense
		死ぬ	しぬ	shinu	//plain present tense
		死ね	しね	shine	Base 4
		死のう	しのう	shinou	//plain lets
		死んで	しんで	shinde	Base "te"
		死んだ	しんだ	shinda	Base "ta"
		*/
		
		JapaneseVerb(kanji: "歩く", furigana: "あるく", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("<##>", "<##>")
			)
		],
		/*aruku (to walk)
		歩か	あるか	aruka	//plain negative
		歩き	あるき	aruki	//polite present tense
		歩く	あるく	aruku	//plain present tense
		歩け	あるけ	aruke	Base 4
		歩こう	あるこう	arukou	//plain lets
		歩いて	あるいて	aruite	Base "te"
		歩いた	あるいた	aruita	Base "ta"
		*/
		
		JapaneseVerb(kanji: "泳ぐ", furigana: "およぐ", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("<##>", "<##>")
			)
		],
		/*oyogu (to swim)
		泳が	およが	oyoga	//plain negative
		泳ぎ	およぎ	oyogi	//polite present tense
		泳ぐ	およぐ	oyogu	//plain present tense
		泳げ	およげ	oyoge	Base 4
		泳ごう	およごう	oyogou	//plain lets
		泳いで	およいで	oyoide	Base "te"
		泳いだ	およいだ	oyoida	Base "ta"
		*/
		JapaneseVerb(kanji: "消す", furigana: "けす", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("<##>", "<##>")
			)
		],
		/*kesu (to erase, turn off)
		消さ	けさ	kesa	//plain negative
		消し	けし	keshi	//polite present tense
		消す	けす	kesu	//plain present tense
		消せ	けせ	kese	Base 4
		消そう	けそう	kesou	//plain lets
		消して	けして	keshite	Base "te"
		消した	けした	keshita	Base "ta"
		*/
		JapaneseVerb(kanji: "行く", furigana: "いく", isGodan: true) : [
			(
				conjugation: JapaneseVerb.plain_Form,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_NegativeForm,
				syllabaries: ("<##>","<##>")
			), (
				conjugation: JapaneseVerb.plain_LetsForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.te_Form,
				syllabaries:("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.ta_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_Form,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_NegativeForm,
				syllabaries: ("<##>", "<##>")
			), (
				conjugation: JapaneseVerb.polite_LetsForm,
				syllabaries: ("<##>", "<##>")
			)
		],
		/*iku (to go)
		行か	いか	ika	//plain negative
		行き	いき	iki	//polite present tense
		行く	いく	iku	//plain present tense
		行け	いけ	ike	Base 4
		行こう	いこう	ikou	//plain lets
		行って	いって	itte	Base "te"
		行った	いった	itta	Base "ta"
		*/

	]
	
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
	override func tearDown() {
		super.tearDown()
	}
	
	/**
	Used to validate that every word has the same number of test cases as the original one
	*/
	func test_verifyTestScheme() {
		let schema = testCases[JapaneseVerb(kanji: "話す", furigana: "はなす", isGodan: true)]!.map({ $0.conjugation })
		for (key, value) in testCases {
			let sutConjugation = value.map({ $0.conjugation })
			if schema.count != sutConjugation.count {
				XCTFail(String(format: "Failed on %@, missing %d test cases", key.furigana, schema.count - sutConjugation.count))
			}
		}
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
