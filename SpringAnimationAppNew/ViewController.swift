//
//  ViewController.swift
//  SpringAnimationAppNew
//
//  Created by Sergey Kosichkin on 12.01.2023.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationStarted = false


    @IBAction func runCoreAnimation(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) {
            if !self.animationStarted {
                self.coreAnimationView.frame.origin.x -= 40
                self.animationStarted.toggle()
            }
        }
        
        
        sender.pulsate()
        
    }
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "morph"
        springAnimationView.curve = "easeInOut"
        springAnimationView.force = 1
        springAnimationView.duration = 1
        springAnimationView.animate()
        
        sender.animation = "squeeze"
        sender.animate()
    }
    
}

