//
//  RestultsController.swift
//  TTP
//
//  Created by Ivan Aldama on 08/03/18.
//  Copyright © 2018 Ivan Aldama. All rights reserved.
//

import UIKit

class RestultsController: UIViewController {

    open var playerChoo:String = ""
    var playerFinalOption:Int = -1
    
    @IBOutlet weak var imageWinner: UIImageView!
    @IBOutlet weak var resultWinner: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        converString()
        chooseChild()
        // Do any additional setup after loading the view.
        
    }

    func chooseChild() -> Void {
        let randNum = Int(arc4random_uniform(3))
        print("El numero del robot es \(randNum)")
        print("El usuario escogio: \(playerChoo)")
        if playerFinalOption != randNum {
            if playerFinalOption == 0 && randNum == 2 {
                print("ganaste")
                self.imageWinner.image = UIImage(named: "scissor")
                self.resultWinner.text = "TIJERAS LE GANA A PAPEL"
            }else if playerFinalOption == 1 && randNum == 0 {
                print("ganaste")
            }else if playerFinalOption == 2 && randNum == 1 {
                print("ganaste")
            } else {
                print("perdiste")
            }
        } else {
            print("empate")
        }
    }
    
    func converString() {
        if playerChoo == "TIJERAS" {
            playerFinalOption = 0
        }else if playerChoo == "PIEDRA" {
            playerFinalOption = 1
        } else {
            playerFinalOption = 2
        }
    }
    func changeUI() -> Void {
        print("tu")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
