//
//  ViewController2.swift
//  SelectCar
//
//  Created by Julian Hoyos Martinez on 5/5/17.
//  Copyright © 2017 Julian Hoyos Martinez. All rights reserved.
//
import UIKit

class ViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource   {
    
    var info = " "
    var posicionRol2 = 0
    var pos = 0
    
    @IBOutlet weak var rol2: UIPickerView!
   
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var imagenFondo: UIImageView!
    @IBOutlet weak var fotoBoton2: UIImageView!
    
    @IBOutlet weak var Imagen2: UIImageView!
    
    //este debemos dejarle para la tercera viewControler
    var optionMenu = [""]
    var optionMenuFondo = [""]
    
    var optionRolAudi = ["RS3", "RS5","RS7", "R8"]
    var optionRolBMW = ["M2", "M3","M4","M6", "i8"]
    var optionRolMercedes = ["Clase A AMG", "CLA AMG", "GLA AMG", "C63 S AMG", "GT R AMG"]
    var optionRolRenault = ["ClioRS", "MeganeRS"]
    var optionRolSeat = ["Ibiza Cupra", "Leon Cupra"]
    var optionRolVolkswagen = ["Golf R", "Scirocco R"]
    
    var fotosAudi = ["A-RS3.jpg", "A-rs5.jpg","A-rs7.jpg", "A-r8.jpg", "A-rs3L.jpg", "A-rs5L.jpg","A-rs7L.jpg", "A-r8L.jpg"]
    
    var fotosBMW = ["B-m2.jpg", "B-m3.jpg","B-m4.jpg","B-m6.jpg", "B-i8.jpg","B-m2L.jpg", "B-m3L.jpg","B-m4L.jpg","B-m6L.jpg", "B-i8L.jpg"]
    
    var fotosMercedes = ["M-aAMG.jpg", "M-claAMG.jpg", "M-glaAMG.jpg", "M-c63AMG.jpg", "M-amggt.jpg","M-amgL.jpg","M-amgL.jpg","M-amgL.jpg","M-amgL.jpg","M-amgL.jpg"]
    
    var fotosRenault = ["R-clioRS.jpg", "R-meganeRS.jpg", "R-clioL.jpg","R-RSL.jpg"]
    
    var fotosSeat = ["S-ibiza.jpg", "S-leon.jpg","S-ibizaL.jpg", "S-cupraL.jpg"]
    
    var fotosVolkswagen = ["V-golf.jpg", "V-scirocco.jpg","V-RL.jpg", "V-RL.jpg"]
    //deberiamos crear un array de opciones y en funcion de la marca nos muestre un listado u otro
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text = info
        rol2.delegate=self
        rol2.dataSource=self
        
        if (info == "Audi"){
            optionMenu = optionRolAudi
            optionMenuFondo = fotosAudi
        }
        else if (info == "BMW" ){
            optionMenu = optionRolBMW
            optionMenuFondo = fotosBMW
        }
        else if (info == "Mercedes-Benz"){
            optionMenu = optionRolMercedes
            optionMenuFondo = fotosMercedes
        }
        else if (info == "Renault"){
            optionMenu = optionRolRenault
            optionMenuFondo = fotosRenault
        }
        else if (info == "Seat"){
            optionMenu = optionRolSeat
            optionMenuFondo = fotosSeat
        }
        else if (info == "Volkswagen"){
            optionMenu = optionRolVolkswagen
            optionMenuFondo = fotosVolkswagen
        }
       
      /*  else if (info == " "){
           alerta(titulo: "Error de seleccion", mensaje: "Error")
            //optionMenuFondo = fotosVolkswagen
        }
 */
        
        // Do any additional setup after loading the view.
        pinta(posicion: 0)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return optionMenu[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return optionMenu.count
    }
    
    func pinta (posicion: Int) {
        Imagen2.image = UIImage(named: optionMenuFondo[posicionRol2])
        pos = optionMenu.count
        pos += posicionRol2
        imagenFondo.image = UIImage(named: optionMenuFondo[pos])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        posicionRol2 = row
        pinta(posicion: posicionRol2)
    }
    

    @IBAction func volver (segue : UIStoryboardSegue ){
        _ = segue.source as! ViewController3
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="Detalle" {
            let dest = segue.destination as! ViewController3
            dest.info1 = optionMenu[posicionRol2]
            
        }
    }
    
    
    
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
