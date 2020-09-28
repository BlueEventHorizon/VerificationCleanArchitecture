//
//  AppDependencyResolver.swift
//  cleanArchitecture
//
//  Created by Katsuhiko Terada on 2020/09/27.
//

import UIKit

class AppDependencyResolver {
    static func resolve(_ viewController: ViewPresenterOutput) {
        let viewPresenter = ViewPresenter()
        let timerController = TimerController()
        let applicationBusinessRule = ApplicationBusinessRule()

        viewPresenter.inject(dependency: viewController)
        timerController.inject(dependency: applicationBusinessRule)
        applicationBusinessRule.inject(dependency: viewPresenter)
    }
}
