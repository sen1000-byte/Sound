//
//  ViewController.swift
//  Sound
//
//  Created by Chihiro Nishiwaki on 2020/05/15.
//  Copyright © 2020 nishiwaki sen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drum_sound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "piano_sound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitar_sound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        drumButton.setImage(UIImage(named: "drum_playing_image"),for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named: "drum_image"), for: .normal)
    }
    
    
    @IBAction func touchDownPianoButton() {
        pianoButton.setImage(UIImage(named: "piano_playing_image"), for: .normal)
        pianoSoundPlayer.currentTime = 0
        pianoSoundPlayer.play()
    }
    @IBAction func touchUpPianoButton() {
        pianoButton.setImage(UIImage(named: "piano_image"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitar_playing_image"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
    }
    @IBAction func touchUpGUitarButton() {
        guitarButton.setImage(UIImage(named: "guitar_image"), for: .normal)
    }
    
    


}

