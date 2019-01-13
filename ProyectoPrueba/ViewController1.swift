//
//  ViewController.swift
//  SelectCar
//
//  Created by Julian Hoyos Martinez on 5/5/17.
//  Copyright © 2017 Julian Hoyos Martinez. All rights reserved.
//
import UIKit

class ViewController1: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var rol1: UIPickerView!
    
    var optionRol1 = [" ", "Audi", "BMW", "Mercedes-Benz", "Renault", "Seat", "Volkswagen"]
    var posicionRol1 = 0
    
    
    @IBOutlet weak var Marca: UILabel!
    
    @IBOutlet weak var ImagenFondo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rol1.delegate=self
        rol1.dataSource=self
        pintaMarca(posicion: 0)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return optionRol1[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //_ = UIColor.blue
        return optionRol1.count
    }
    
    func pintaMarca (posicion: Int) {
        if (posicionRol1 == 0){
            Marca.text = " "
            ImagenFondo.image = UIImage()
        }
        else if (posicionRol1 == 1){
            Marca.text = "Audi"
            ImagenFondo.image = UIImage(named: "LogoAudi.png")
        }
        else if (posicionRol1 == 2){
            Marca.text = "BMW"
            ImagenFondo.image = UIImage(named: "LogoBMW.png")
        }
        else if (posicionRol1 == 3){
            Marca.text = "Mercedes-Benz"
            ImagenFondo.image = UIImage(named: "LogoMercedes.png")
        }
        else if (posicionRol1 == 4){
            Marca.text = "Renault"
            ImagenFondo.image = UIImage(named: "LogoRenault.png")
        }
        else if (posicionRol1 == 5){
            Marca.text = "Seat"
            ImagenFondo.image = UIImage(named: "LogoSeat.png")
        }
            
        else if (posicionRol1 == 6){
            Marca.text = "Volkswagen"
            ImagenFondo.image = UIImage(named: "LogoVolkswagen.png")
        }
    }
    
    
    //Con esta funcion mostraremos la imagen del coche que seleccionemos sin tener que pulsar en el botón, es decir, solamente seleccionando la marca de entre las opciones
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        posicionRol1 = row
        pintaMarca(posicion: posicionRol1)
        
        
    }
    
    @IBAction func volver (segue : UIStoryboardSegue ){
        _ = segue.source as! ViewController2
        
    }
    
    //Con este metodo se muestra en la segunda pantalla el icono que ha quedado seleccionado en la primera
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if (segue.identifier=="Detalle" && Marca.text==" ") {
         alerta(titulo: "Error de selección", mensaje: "Por favor, seleccione una marca valida para poder pasar a la selección de modelos.")
        }
       else{
        let destino = segue.destination as! ViewController2
        destino.info = Marca.text!
        }
    }
    
    func alerta(titulo:String, mensaje:String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let continueAction = UIAlertAction(title: "Volver", style: .default, handler: nil)
        alert.addAction(continueAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
