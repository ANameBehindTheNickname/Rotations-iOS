//
//
//  Copyright © 2021 ANameBehindTheNickname. All rights reserved.
//

import UIKit
import Rotations

class ViewController: UIViewController {
    @IBOutlet weak var orientationLabel: UILabel!
    let rotationsManager = RotationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rotationsManager.startRotationManagerUpdates(self)
    }
}

extension ViewController: RotationManagerDelegate {
    func deviceDidRotate(to orientation: UIDeviceOrientation) {
        var orientationText = ""
        switch orientation {
        case .unknown: orientationText = "unknown"
        case .landscapeLeft: orientationText = "landscapeLeft"
        case .landscapeRight: orientationText = "landscapeRight"
        case .portrait: orientationText = "portrait"
        case .portraitUpsideDown: orientationText = "portraitUpsideDown"
        default: break
        }
        
        DispatchQueue.main.async {
            self.orientationLabel.text = orientationText
        }
    }
}
