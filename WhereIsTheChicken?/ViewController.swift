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
    
    
    var currentChicken: Int = 0
    var isGameOn = false
    var score: Int = 0
    let wrongAndwers: [Int] = [1, 3, 6]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    func play() {
        isGameOn = true
        updateUI()
        setupChicken()
    }
    
    func stop() {
        isGameOn = false
        updateUI()
    }
    
    func checkAnswer(taf : Int) {

    }
    
    func setupChicken() {
        let randomInt = Int.random(in: 0...7)
        let imageString = "poule\(randomInt)"
        let image = UIImage(named: imageString)
        chickenIV.image = image
    }
    
    func updateUI() {
        yesBtn.isHidden = !isGameOn
        noBtn.isHidden = !isGameOn
        playBtn.setTitle(!isGameOn ? "Play" : "Stop", for: .normal)
        resultLabel?.isHidden = !isGameOn
        chickenIV.layer.cornerRadius = 20
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

