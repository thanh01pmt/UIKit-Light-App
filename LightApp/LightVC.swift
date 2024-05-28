//
//  LightVC.swift
//  LightApp
//
//  Created by Tony Pham on 28/5/24.
//

import UIKit

class LightVC : UIViewController {
    @IBOutlet weak var lblStatus: UILabel!
    
    @IBOutlet weak var btnToggleLight: UIButton!
    
    @IBOutlet var uivLight: UIView!
    
    var isOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        lblStatus.textColor = .white
        lblStatus.text = "Light Off"
        btnToggleLight.setTitle("Light On", for: .normal)
    }
    
    @IBAction func btnToggleLight(_ sender: UIButton) {
        isOn = !isOn
        
        if isOn {
            UIView.animate(withDuration: 1.0) {
                self.uivLight.backgroundColor = .white
            }
            lblStatus.textColor = .black
            lblStatus.text = "Light is On"
            btnToggleLight.setTitle("Light Off", for: .normal)
        } else {
            UIView.animate(withDuration: 1.0) {
                self.uivLight.backgroundColor = .black
            }
            lblStatus.textColor = .white
            lblStatus.text = "Light is Off"
            btnToggleLight.setTitle("Light On", for: .normal)
        }
    }
}
