//
//  ViewPresenter.swift
//  cleanArchitecture
//
//  Created by Katsuhiko Terada on 2020/09/27.
//

import UIKit

// protocol ViewPresenterInput {
//    func recieveEvent(dice: Int)
// }

protocol ViewPresenterOutput {
    func sendEvent(image: UIImage)
}

class ViewPresenter: ApplicationBusinessRuleOutput {
    var dependency: ViewPresenterOutput!

    func inject(dependency: ViewPresenterOutput) {
        self.dependency = dependency
    }

    func sendEvent(dice: Int) {
        guard let image = UIImage(named: String(dice)) else {
            // error
            return
        }
        dependency.sendEvent(image: image)
    }
}
