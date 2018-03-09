//
//  RestultsController.swift
//  TTP
//
//  Created by Shadow on 08/03/18.
//  Copyright © 2018 Shadow. All rights reserved.
//

import UIKit

class RestultsController: UIViewController {

    open var playerChoo:String = ""
    var playerFinalOption:Int = -1
    //Conexion de imagen, y label, que otorgaran una vision de resultado a la eleccion del jugador.
    @IBOutlet weak var imageWinner: UIImageView!
    @IBOutlet weak var resultWinner: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        converString()
        chooseChild()
        // Do any additional setup after loading the view.
        
    }
//Comparacion de objetos, y seleccion de imagen localizada sobre los assets, y el uso de random.
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
                self.resultWinner.text = "PIEDRA LE GANA A TIJERAS"
                self.imageWinner.image = UIImage(named: "rock")
            }else if playerFinalOption == 2 && randNum == 1 {
                print("ganaste")
                self.imageWinner.image = UIImage(named: "paper")
                self.resultWinner.text = "PAPEL LE GANA A PIEDRA"
            } else {
                print("perdiste")
                self.imageWinner.image = UIImage(named: "loser")
                self.resultWinner.text = "FATAL ERROR D:"
            }
        } else {
            print("empate")
            self.imageWinner.image = UIImage(named: "draw")
            self.resultWinner.text = "DRAW"
            
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
