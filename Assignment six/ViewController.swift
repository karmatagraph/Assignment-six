//
//  ViewController.swift
//  Assignment six
//
//  Created by karma on 3/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var chooseBtn: UIButton!
    @IBOutlet weak var chosenLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseBtnClicked(_ sender: UIButton) {
        let secondScreen = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        secondScreen.selectDelegate = self
        present(secondScreen, animated: true, completion: nil)
        
    }
    
    
}

extension ViewController: SelctionDelagate{
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        imgView.image = image
        chosenLabel.text = name
        view.backgroundColor = color
    }
}

