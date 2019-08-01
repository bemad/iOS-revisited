//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Bhav on 28/07/19.
//  Copyright © 2019 Bhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var RecordingLabel: UILabel!
    
    @IBOutlet weak var stopRecording: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecording.isEnabled = false
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will apear called")
    }

    @IBAction func recordAudio(_ sender: Any) {
        stopRecording.isEnabled = true
        recordButton.isEnabled = false
        RecordingLabel.text = "Recording in Progress"
    }
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        stopRecording.isEnabled = false
        RecordingLabel.text = "Tap to Record"
    }
}

