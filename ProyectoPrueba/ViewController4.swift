//
//  ViewController4.swift
//  SelectCar
//
//  Created by Julian Hoyos Martinez on 26/10/2018.
//  Copyright © 2018 Julian Hoyos Martinez. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
        
    @IBOutlet weak var rol4: UIPickerView!
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var preciotasado: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var tasacion: UILabel!
    var posicionRol4 = 0
    var info2 = " "
    var preciotasar = 0
    var optionRol4 = [" ","5 años", "3 años", "1 año", "6 meses"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label4.text = info2
        rol4.delegate=self
        rol4.dataSource=self
        if(info2 == "RS3"){
            imagen.image = UIImage(named: "A-RS3T.jpg")
            
        }else if(info2 == "RS5"){
            imagen.image = UIImage(named: "A-RS5T.jpg")
            
        }else if(info2 == "RS7"){
            imagen.image = UIImage(named: "A-RS7T.jpg")
            
        }else if(info2 == "R8"){
            imagen.image = UIImage(named: "A-R8T.jpg")
            
        }else if(info2 == "M2"){
            imagen.image = UIImage(named: "B-M2T.jpg")
            
        }else if(info2 == "M3"){
            imagen.image = UIImage(named: "B-M4T.jpg")
            
        }else if(info2 == "M4"){
            imagen.image = UIImage(named: "B-M6T.jpg")
            
        }else if(info2 == "M6"){
            imagen.image = UIImage(named: "B-i8T.jpg")
            
        }else if(info2 == "I8"){
            imagen.image = UIImage(named: "B-i8T.jpg")
            
        }else if(info2 == "Clase A AMG"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "CLA AMG"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "GLA AMG"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "C63 S AMG"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "GT R AMG"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "ClioRS"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "MeganeRS"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "Ibiza Cupra"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "Leon Cupra"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "Golf R"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }else if(info2 == "Scirocco R"){
            imagen.image = UIImage(named: "A-rs3L.jpg")
            
        }
        pinta(posicion: 0)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return optionRol4[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return optionRol4.count
    }
    
    func pinta(posicion: Int){
        if (posicionRol4 == 0){
           tasacion.text = "Por favor, seleccione un periodo valido para calcular su tasación."
        }
        else if (posicionRol4 == 1){
            tasacion.text = "Para un plazo de 5 años, la cuota mensual para el coche seleccionado sería de "+String(preciotasar/60)+" €."
        }
        else if (posicionRol4 == 2){
            tasacion.text = "Para un plazo de 3 años, la cuota mensual para el coche seleccionado sería de "+String(preciotasar/36)+" €."
        }
        else if (posicionRol4 == 3){
            tasacion.text = "Para un plazo de 1 años, la cuota mensual para el coche seleccionado sería de "+String(preciotasar/12)+" €."
        }
        else if (posicionRol4 == 4){
            tasacion.text = "Para un plazo de 6 meses, la cuota mensual para el coche seleccionado sería de "+String(preciotasar/6)+" €."
        }

    }
    //FUNCION PARA MOSTRAR EL VALOR SOLO CON PONERSE ENCIMA DEL ROL
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        posicionRol4 = row
        pinta(posicion: posicionRol4)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="volver4" {
            let destino = segue.destination as! ViewController3
            destino.info1 = label4.text!
        }
    }
    
    
    
    
    
    
    
    
    //LO DE ABAJO FUNCIONA LA DIVION PERO NO MULTIFUNCION
   /* func pinta2 (num: Int){
        tasacion.text = String (preciotasar/2)
         preciotasado.text = "El precio de la cuota mensual será desde "+String( preciocuota )+" € al mes como precio base."
        
    }
 */
  /*
    func pinta (   ){
        tasacion.text = "El precio de cada cuota es "+String(preciocuota)+"€ al mes durante"//+optionRol4[optionMenu]+" años."
    }
    */
    
    
    /*
     func pinta (posicion: Int){
     if (posicionRol4 == 0){
     preciotasado.text = String(preciotasar / 60)
     }
     else if (posicionRol4 == 1){
     preciotasado.text = "El precio de la cuota mensual será desde "+String(preciotasar / 36)+" € al mes como precio base."
     }
     else if (posicionRol4 == 2){
     preciotasado.text = String(preciotasar / 12)
     }
     else if (posicionRol4 == 3){
     preciotasado.text = String(preciotasar / 6)
     }
     }
     */
    /*
     func pinta2 (posicion: String){
     if (optionRol4 == ["5 años"]){
     preciotasado.text = String(preciotasar / 60)
     }
     else if (optionRol4 == ["3 años"]){
     preciotasado.text = "El precio de la cuota mensual será desde "+String(preciotasar / 36)+" € al mes como precio base."
     }
     else if (optionRol4 == ["1 año"]){
     preciotasado.text = String(preciotasar / 12)
     }
     else if (optionRol4 == ["6 meses"]){
     preciotasado.text = String(preciotasar / 6)
     }
     }
     */
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
