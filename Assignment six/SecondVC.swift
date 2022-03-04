//
//  SecondVC.swift
//  Assignment six
//
//  Created by karma on 3/4/22.
//

import UIKit

// protocol
protocol SelctionDelagate{
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SecondVC: UIViewController{
    
    var selectDelegate: SelctionDelagate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // do something here
        
    }
    @IBAction func ukrBtnClicked(_ sender: UIButton) {
        selectDelegate.didTapChoice(image: UIImage(named: "flagukr")!, name: "slava ukraine", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func rusBtnClicked(_ sender: UIButton) {
        selectDelegate.didTapChoice(image: UIImage(named: "flagrus")!, name: "sepcial military operation", color: .red )
        dismiss(animated: true, completion: nil)
    }
    
    
}
