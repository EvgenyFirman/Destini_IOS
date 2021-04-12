//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)

    }

    @IBAction func madeChoise(_ sender: UIButton) {
        if sender.titleLabel!.text! == "Turn right"{
            storyLabel.text = storyBrain.stories[1].title
            choice1Button.setTitle(storyBrain.stories[1].choice1, for: .normal)
            choice2Button.setTitle(storyBrain.stories[1].choice2, for: .normal)
        } else {
            storyLabel.text = storyBrain.stories[2].title
            choice1Button.setTitle(storyBrain.stories[2].choice1, for: .normal)
            choice2Button.setTitle(storyBrain.stories[2].choice1, for: .normal)
        }
            
        }
    }
    


