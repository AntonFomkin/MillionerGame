//
//  QuestionBuilder.swift
//  Millioner
//
//  Created by Anton Fomkin on 30.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation

class QuestionBuilder {

    var listQuestion: [Int:String] = [:]
    var listResponce: [Int:[String]] = [:]
    var listTrueQuestion: [Int:Int] = [:]
    var delegate: SendDictRequestDelegate?
    
    func build() -> Question{

        return Question(question: listQuestion, response: listResponce, trueQuestion: listTrueQuestion)
    }
    
    func newRequest(request: String) {
        self.delegate = AddQuestionViewController()
        self.listQuestion = (self.delegate?.sendDict().question)!
        self.listQuestion[listQuestion.count + 1] = request
    }
    
    func newListResponce(responce: [String]) {
 
        self.delegate = AddQuestionViewController()
        self.listResponce = (self.delegate?.sendDict().response)!
        self.listResponce[listResponce.count + 1] = responce
 
    }
    
    func newTrueQuestion(trueQuestion: Int) {
      
        self.delegate = AddQuestionViewController()
        self.listTrueQuestion = (self.delegate?.sendDict().trueQuestion)!
        self.listTrueQuestion[listTrueQuestion.count + 1] = trueQuestion
 
    }
}
