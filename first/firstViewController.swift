//
//  firstViewController.swift
//  first
//
//  Created by Apple on 02/11/23.
//

import UIKit
import AVFoundation
import AVKit

class firstViewController: UIViewController {

    var player : AVAudioPlayer!
    var play = false
    
    @IBAction func Video(_ sender: Any) {
        playVideo()
    }
    
    @IBAction func Player(_ sender: UIButton) {
        toggle()
        if sender.titleLabel?.text == "PLAY" {
            sender.setTitle("PAUSE", for: .normal)
        } else {
            sender.setTitle("PLAY", for: .normal)
        }
        playSound()

    }

    @IBAction func play(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func playVideo(){
        if let url = Bundle.main.url(forResource: "video", withExtension: "mp4") {
                do {
                    let avPlayer = AVPlayer(url : url)
                    let avController = AVPlayerViewController()
                    avController.player = avPlayer
                    
                        present(avController, animated: true){
                            avPlayer.play()
                        }
                    
                }
            } else {
                print("FILE NOT FOUND")
            }
    }
    
    func playSound(){
        if let url = Bundle.main.url(forResource: "song", withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                
                if play==true {
                    player.play()
                } else {
                    player.pause()
                }
            } catch {
                print("ERROR PLAYING")
            }
        } else {
            print("FILE NOT FOUND")
        }
        
        
    }
    
    func toggle() {
        if play {
            play = false
        } else {
            play = true
        }
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
