//
//  TextToSpeechViewController.swift
//  Text To Speech
//
//  Created by Felipe Braga on 22/01/20.
//  Copyright © 2020 Carmel Braga. All rights reserved.
//

import UIKit
import AVFoundation

class TextToSpeechViewController: UIViewController {

    let synthesizer = AVSpeechSynthesizer()

    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var inputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func play(_ sender: Any) {
        let input: String! = inputTextView.text
        let utterance = AVSpeechUtterance(string: input)
        
        synthesizer.speak(utterance)
        synthesizer.continueSpeaking()
        
    }
    
    @IBAction func pause(_ sender: Any) {
        synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
    }
    
    @IBAction func clear(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
        inputTextView.text = ""
    }
    
    @IBAction func stop(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
