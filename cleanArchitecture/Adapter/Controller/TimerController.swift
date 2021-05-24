//
//  TimerController.swift
//  cleanArchitecture
//
//  Created by Katsuhiko Terada on 2020/09/27.
//

import Foundation

class TimerController {
    var dependency: ApplicationBusinessRuleInput!

    func inject(dependency: ApplicationBusinessRuleInput) {
        self.dependency = dependency

        DispatchQueue.main.async {
            self.start()
        }
    }

    fileprivate var timer: Timer?

    func start() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(sendEvent),
            userInfo: nil,
            repeats: true
        )
    }

    @objc private func sendEvent() {
        self.dependency.recieveEvent()
    }
}
