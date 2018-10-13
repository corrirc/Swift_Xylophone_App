//
//  ViewController.swift
//  Xylophone
//
//  Created by Ricky Corrigan on 20/01/2018.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var selectedSoundFileName : String = ""
    
    var audioPlayer: AVAudioPlayer!
    
    let soundArray = ["note1", "note2","note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        print(selectedSoundFileName)
    
        playSound()
    }
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")!
        
        do{
            
            try audioPlayer = AVAudioPlayer (contentsOf: soundURL)
            
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

