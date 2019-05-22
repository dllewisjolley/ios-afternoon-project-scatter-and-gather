//
//  ViewController.swift
//  AnimationApp
//
//  Created by Diante Lewis-Jolley on 5/22/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isScattered: Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        lambdaArray += [lLabel, aLabel, mLabel, bLabel, bLabel, dLabel, lastaLabel]
        imageView.image = UIImage(named: "lambda_logo")

    }


    @IBAction func toggleButtonPressed(_ sender: Any) {
        setupAnimation()
    }



    private func setupAnimation() {
        UIView.animate(withDuration: 3, animations: {
            if self.isScattered {
                self.imageView.alpha = 0
                for letters in self.lambdaArray {
                    let randomY = CGFloat.random(in: -15...15)
                    let randomX = CGFloat.random(in: -20...10)
                    letters.transform = CGAffineTransform(scaleX: randomX, y: -randomY)
                    letters.transform = CGAffineTransform(rotationAngle: randomY)


                }

                self.isScattered = false
            } else {
                for letters in self.lambdaArray {
                    letters.transform = .identity
                }
                self.imageView.alpha = 1.0
                self.isScattered = true
            }
        })
    }


    @IBOutlet weak var lLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var lastaLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var lambdaArray: [UILabel] = []

    

}

