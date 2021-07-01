//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let listOfStory = [
    Story(title: "You see a for on the road", choice1: "You take a left", choice1Destination: 1, choice2: "Take a right", choice2Destination: 2),
        Story(title: "You see a tiger", choice1: "Shout for help", choice1Destination: 1, choice2: "Play Dead", choice2Destination: 2),
        Story(title: "You see a treasure chest", choice1: "Open it", choice1Destination: 1, choice2: "Look for traps", choice2Destination: 2)
    ]
    
    var storyNumber = 0
    
    func getStoryText() -> String {
        return listOfStory[storyNumber].title
    }
    
    func getChoice1() -> String {
        return listOfStory[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return listOfStory[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        if userChoice == listOfStory[storyNumber].choice1 {
            storyNumber = listOfStory[storyNumber].choice1Destination
        } else {
            storyNumber = listOfStory[storyNumber].choice2Destination
        }
    }
}
