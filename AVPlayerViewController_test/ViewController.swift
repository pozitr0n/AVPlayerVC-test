//
//  ViewController.swift
//  AVPlayerViewController_test
//
//  Created by Raman Kozar on 04/05/2023.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    var playerControl: AVPlayerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playVideoButton(_ sender: Any) {
        
        guard let url = URL(string: "https://ia600207.us.archive.org/9/items/FirstSpaceshipOnVenusMPEG/First_Spaceship_On_Venus.mp4") else {
            return
        }
        
        let player = AVPlayer(url: url)
        
        playerControl = AVPlayerViewController()
        playerControl.delegate = self
        playerControl.player = player
        playerControl.allowsPictureInPicturePlayback = false
        playerControl.player?.play()
        
        present(playerControl, animated: true, completion: nil)
        
    }

}

extension ViewController: AVPlayerViewControllerDelegate {
    
    func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
        print("Video will started picture in picture")
    }
    
    func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
        print("Video did started picture in picture")
    }
    
}

