//
//  ViewController.swift
//  iusaDemoApp
//
//  Created by Rafael Villa on 24/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var mailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func actionFind(_ sender: Any) {
        var findMoto: findMotoRequest = findMotoRequest(name: fullNameField.text ?? "", phone: phoneField.text ?? "", mail: mailField.text ?? "")
        print(findMoto)
        APIServices().postFindMoto(findMoto: findMoto){ resultJson in
            guard let resultJson = resultJson else {
                return
            }
            print(resultJson)
            let vc = ShowMotosTableViewController()
            vc.findMoto = resultJson
            
            self.present(vc, animated: true, completion: nil)
        }
    }
}

