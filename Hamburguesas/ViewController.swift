//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Joaquín Cerdá Boluda on 18/11/15.
//  Copyright © 2015 Ximo Cerdà. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var miColeccionDePaises = ColeccionDePaises()
    var miColeccionDeHamburguesa = ColeccionDeHamburguesa()

    @IBOutlet weak var paisLabel: UILabel!
    @IBOutlet weak var hamburguesaLabel: UILabel!
    
    @IBOutlet var lienzo: UIView!
    @IBOutlet weak var aparienciaBoton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiaDatos(sender: AnyObject) {
        // Primero nuevos datos
        hamburguesaLabel.text = miColeccionDeHamburguesa.obtenHamburguesa()
        paisLabel.text = miColeccionDePaises.obtenPais()
        
        // Vamos a por el color
        let redComponent = CGFloat(Int(arc4random()) % 256) / 256
        let greenComponent = CGFloat(Int(arc4random()) % 256) / 256
        let blueComponent = CGFloat(Int(arc4random()) % 256) / 256
        let newColor = UIColor(red: redComponent, green: greenComponent, blue: blueComponent, alpha: 1)
        
        // Lo aplicamos al fondo y al texto del Botón
        lienzo.backgroundColor = newColor
        aparienciaBoton.tintColor = newColor
        
        // Finalmente, las letras y el fondo del botón cambian en función de si es claro u oscuro
        // Uso la fórmula del paso a escala de grises
        let greyLevel = 0.299 * redComponent + 0.114 * blueComponent + 0.587 * greenComponent
        if (greyLevel > 0.5) {
            // Color claro, letras negras
            aparienciaBoton.backgroundColor = UIColor.blackColor()
            paisLabel.textColor = UIColor.blackColor()
            hamburguesaLabel.textColor = UIColor.blackColor()
        } else {
            // Color oscuro, letras blancas
            aparienciaBoton.backgroundColor = UIColor.whiteColor()
            paisLabel.textColor = UIColor.whiteColor()
            hamburguesaLabel.textColor = UIColor.whiteColor()
        }
    }

}

/*

5. Al presionar el botón debes cambiar el país y la hamburguesa que se despliegan en las etiquetas, de manera opcional cambia el color de fondo como se realizo en los videos del módulo 5.

Review Criteriamenos
¿El playground se encuentra en GitHub?
¿El playground está hecho en Swift?
¿Se incluye en el proyecto el archivo: Datos.swift?
¿Dentro del archivo Datos.swift se define la clase: ColeccionDePaises con la funcionalidad definida?
¿Dentro del archivo Datos.swift se define la clase: ColeccionDeHamburguesas con la funcionalidad definida?
¿La interfaz gráfica define las dos etiquetas y el botón de: “Quiero una hamburguesa!!!”?
¿Los elementos gráficos se encuentran centrados?
¿La clase ViewController.swift define una instancia de cada una de las siguientes clases ColeccionDePaises,  ColeccionDeHamburguesas?
¿La clase ViewController.swift cuenta con: Un @IBoutlet para la etiqueta de país. Un @IBoutlet para la etiqueta de hamburguesa. Un @IBAction para implementar cambiar de país y de hamburguesa?
¿Al presionar el botón se cambian de manera aleatoria los valores de la etiqueta país y hamburguesa?
*/