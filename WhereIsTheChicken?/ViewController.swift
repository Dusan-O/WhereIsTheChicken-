//
//  ViewController.swift
//  WhereIsTheChicken?
//
//  Created by Dusan Orescanin on 04/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    
    
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var chickenIV: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var yesBtn: UIButton!
    @IBOutlet weak var noBtn: UIButton!
    
    var isGameOn = false
    var score: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    func play() {
        isGameOn = true
        updateUI()
    }
    
    func stop() {
        isGameOn = false
        updateUI()
    }
    
    func checkAnswer(taf : Int) {

    }
    
    func updateUI() {
        yesBtn.isHidden = !isGameOn
        noBtn.isHidden = !isGameOn
        playBtn.setTitle(!isGameOn ? "Play" : "Stop", for: .normal)
        resultLabel?.isHidden = !isGameOn
    }
    
    func updateScore() {
        scoreLbl.text = "Score: \(score)"
    }
    
    func updateAnswer(success: Bool) {
        resultLabel.text = success ? "Gagné" : "Perdu"
    }
    
    
    @IBAction func playBtnPressed(_ sender: Any) {
        isGameOn ? stop() : play()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
    }
    

}

