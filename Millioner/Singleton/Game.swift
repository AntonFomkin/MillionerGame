//
//  Singleton.swift
//  Millioner
//
//  Created by Anton Fomkin on 09/10/2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation

final class Game {
    
    static let shared = Game()
    var countTrueResponce : GameSession?
    var randomQuestion : GameSettings?
    var dictQuestion : Question?
    var newDictonaryQuestion: GameSaveDictonary?
  /*
    var saveNewDictonaryQuestion: Bool {
        didSet {
            recordsCaretaker.saveQuestion(question: self.dictQuestion!)
        }
    }
 */
    var statusRandomQuestion: Bool {
        didSet {
            recordsCaretaker.saveSettings(state: self.statusRandomQuestion)
        }
    }
  
    var results : [ResultOfGame] = [] {
        didSet {
            recordsCaretaker.saveResults(records: self.results)
        }
    }
    var countQuestion: Int = 1
    private let recordsCaretaker = RecordsCaretaker()
    
    private init() {
        self.results = self.recordsCaretaker.retrieveRecords()
        self.statusRandomQuestion = self.recordsCaretaker.retrieveStatusRandom()
        self.dictQuestion = self.recordsCaretaker.retrieveQuestion()
    }
    
    func addResult() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        let now = dateFormatter.string(from: Date())
        let procent: Double = ((Double(self.countTrueResponce!.data) / Double(self.countQuestion))) * 100
        self.results.append(ResultOfGame(dateGame: now,score: self.countTrueResponce!.data,procent: procent,countRequest: (self.dictQuestion?.question.count)!))
        self.countTrueResponce = nil
    }
    
    func addRandomState() {
        self.statusRandomQuestion = self.randomQuestion!.status
    }
    
    func saveNewDictonary() {
        //self.saveNewDictonaryQuestion = self.newDictonaryQuestion!.save
         recordsCaretaker.saveQuestion(question: self.dictQuestion!)
    }
    
}
 
