//
//  ViewController.swift
//  JapaneseConjugator
//
//  Created by Derrick  Ho on 1/18/16.
//  Copyright © 2016 Derrick  Ho. All rights reserved.
//

import UIKit
import AVKit

/**
Type of games
1) Pronounciation:  read the japanese.  You will be judge on accuracy and speed.  It will be written in kanji or hirigana.  This will help you read faster.
2) English to japanese: try to convert an english sentence to japanese.  Get as close as you can
3) japanese to english: Same as 2 but in reverse 
4) Listening: Use AVUtterence to make the machine say the words.  Repeat the words that you think it said.  Accuracy and speed
5) Listening and translating: When a word is spoken, create an english translation.

*/

class ViewController: UIViewController {
	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var userInputTextView: UITextView!

	var japaneseArraySelectedIndex = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setUpQuestion()
	}

	@IBAction func tappedNextButton(_ sender: AnyObject) {
		japaneseArraySelectedIndex += 1
		setUpQuestion(index: japaneseArraySelectedIndex)
	}
	
	func setUpQuestion(index: Int = 0) {
		let obj = verbList[index % verbList.count]
		label.text = obj.kanji.rawValue
		userInputTextView.text = nil
		
	}
	
}

