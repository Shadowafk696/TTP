//
//  ViewController.swift
//  TTP
//
//  Created by Ivan Aldama on 08/03/18.
//  Copyright © 2018 Ivan Aldama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Papel(_ sender: UIButton) {
    }
    @IBAction func Tijeras(_ sender: UIButton) {
    }
    @IBAction func Piedra(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
         let newView = segue.destination as! RestultsController
    
        switch segue.identifier {
        case "Tijeras"?:
           newView.playerChoo = "TIJERAS"
        case "Piedra"?:
            newView.playerChoo = "PIEDRA"
        default:
            newView.playerChoo = "PAPEL"
        }
    }
    


}

