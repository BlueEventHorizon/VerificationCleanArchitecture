//
//  ApplicationBusinessRule.swift
//  cleanArchitecture
//
//  Created by Katsuhiko Terada on 2020/09/27.
//

import Foundation

protocol ApplicationBusinessRuleInput {
    func recieveEvent()
}

protocol ApplicationBusinessRuleOutput {
    func sendEvent(dice: Int)
}

class ApplicationBusinessRule: ApplicationBusinessRuleInput {
    private var dependency: ApplicationBusinessRuleOutput!

    private var counter: Int = 0
    private var dice: Int = 0

    func inject(dependency: ApplicationBusinessRuleOutput) {
        self.dependency = dependency
    }

    func recieveEvent() {
        counter += 1
        if counter > 6 {
            counter = 1
        }
        dice = counter
        dependency.sendEvent(dice: dice)
    }
}
