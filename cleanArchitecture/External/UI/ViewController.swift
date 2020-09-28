//
//  ViewController.swift
//  cleanArchitecture
//
//  Created by Katsuhiko Terada on 2020/09/27.
//

import UIKit

class ViewController: UIViewController, ViewPresenterOutput {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        AppDependencyResolver.resolve(self)
    }

    func sendEvent(image: UIImage) {
        imageView.image = image
    }
}
