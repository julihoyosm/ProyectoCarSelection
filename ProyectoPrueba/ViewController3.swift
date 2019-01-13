//
//  ViewController3.swift
//  SelectCar
//
//  Created by Julian Hoyos Martinez on 9/5/17.
//  Copyright © 2017 Julian Hoyos Martinez. All rights reserved.
//
import UIKit


class ViewController3: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var rol3: UIPickerView!
    
    @IBOutlet weak var label3: UILabel!
    
   
    @IBOutlet weak var descripcion: UITextView!
    
    @IBOutlet weak var imagenFondo: UIImageView!
    
    var posicionRol3 = 0
    var info1 = ""
    var motor = ""
    var interior = ""
    var precio = 0
    var conf = ""
    var preciopase = 0
    var especificacionesMenu = [""]
    var optionRol3 = ["Motor", "Interior", "Precio", "Configuración"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label3.text = info1
        rol3.delegate=self
        rol3.dataSource=self
        
        if (info1 == "RS3"){
            motor = "- Motor de combustión: Gasolina \n\n - Cinco cilindradas \n\n - Velocidad máxima (km/h): 250 \n\n- Aceleración 0-100 km/h (s): 43"
            interior = "- Abrepuertas interior iluminado \n\n- Asientos delanteros con ajuste lumbar eléctrico: 310 € \n\n- Asientos delanteros con calefacción: 420 €\n\n- Asientos delanteros con regulación en altura: De serie\n\n- Asientos delanteros deportivos: De serie"
            precio =  59800
            imagenFondo.image = UIImage(named: "A-RS3I.jpg")
            conf = "http://www.apple.es"//"http://www.audi.es/es/web/es/modelos/a3/audi-rs3-sedan.html"
            
        }
        else if (info1 == "RS5" ){
            motor = "Su motor es el nuevo 2.9 TFSI biturbo, que entrega: 331 kW (450 CV) y 600 Nm de par con tracción quatro de serie que distribuye la fuerza entre las cuatro ruedas.\n\n- Potencia máxima (kW) / CV 331 kW (450 CV) \n\n- Aceleración de 0-100 km/h 3,9 segundos \n\n- Par máximo Nm / rpm 600/1.900 hasta 5.000 Nm a min -1 \n\n- Velocidad máxima: 250 km/h, opcional 280 km/h \n\n- Tipo de tracción: Permanente a las cuatro ruedas quattro \n\n- Transmisión: Tiptronic de 8 velocidades \n\n- Consumo medio 8,7 l/100 km \n\n- Emisiones combinadas de CO2 197 g/km"
            interior = "En el interior, un acabado en tonos oscuros y los umbrales de las puertas iluminados con los logotipos RS 5 de serie dan la bienvenida al conductor y a los pasajeros. \n\nLos asientos deportivos tapizados en napa fina con el logotipo RS en los respaldos forman parte del equipamiento de serie. \nOpcionalmente están disponibles los asientos deportivos RS con reposacabezas integrados, con tapicería perforada y dibujo en forma de diamante. \n\nEl volante deportivo RS forrado en piel está achatado en su parte inferior. \n\nLa atmósfera de elegante deportividad se completa con las inserciones en el salpicadero y en las puertas."
            
            precio = 100990
            imagenFondo.image = UIImage(named: "A-RS5I.jpg")
            conf = "http://www.audi.es/es/web/es/modelos/a5/rs-5-coupe.html"
            
        }
        else if (info1 == "RS7" ){
            motor = "- Tipo de motor: Motor de gasolina V8 cilindros con cárter de aluminio e inyección directa de gasolina, DOHC, turbo, dos solapas de movimiento de carga, control de la demanda de alta presión y el sistema de combustible de baja presión (4 válvulas por cilindro), enfriamiento del aire de carga indirecta\n\n- Cilindrada cc: 3993\n\n- Potencia máxima kW (CV)/rpm: 412 (560)/5700-6600\n\n- Par máximo Nm/rpm: 700/1750 - 5500 \n\n- Velocidad máxima: 250 km/h\n\n- Aceleración 0-100 km/h: 3,9 s"
            interior = "Para mantener un control firme sobre la potencia del vehículo, las levas de cambio del volante deportivo multifunción RS, forrado de cuero, le permiten cambiar de marchas de forma manual sin soltar el contorno del mismo. \nLos asientos deportivos RS adoptan también este control mediante una excelente sujeción lateral. \nLos asientos deportivos RS ofrecen una excelente sujeción lateral y presentan un diseño en forma de panal de color gris roca si se solicitan con la tapicería opcional de cuero Valcona. \n\nLas inserciones de carbono de gran calidad confieren al interior una atmósfera deportiva definida. Déjese inspirar por el Audi RS 7 Sportback."
            precio = 144325
            imagenFondo.image = UIImage(named: "A-RS7I.jpg")
            conf = "http://www.audi.es/es/web/es/modelos/a7/rs-7-sportback.html"
            
        }
        else if (info1 == "R8"){
            // desc = "Este coche destaca por su impresionante rendimiento. \nEl exterior cuenta con partes de carbono y con el sorprendente alerón trasero que merece una mención especial. \nTodo ello consigue que aumente la carga aerodinámica en el eje trasero y muestre una impresión de atletismo en general."
            motor = "3,2 segundos es todo lo que necesita para convertir una primera impresión en una realidad. \n\nEl motor 5.2 FSI está disponible en dos versiones: una con 397 kW (540 CV) y otra con unos deportivos 449 kW (610 CV). \n\nEl sonido del motor V10 aspirado, cuyo par motor máximo está disponible a 6.500 rpm, es ahora aún más profundo e intenso."
            interior = "En el nuevo Audi virtual cockpit, las pantallas son digitales. \nLos controles más importantes se agrupan juntos en grupos de botones situados en el volante, también conocidos como satélites. \n\nEn el interior, el conductor tiene la impresión de estar sentado en un vehículo de competición. \n\n- Los controles del aire acondicionado subrayan la simplicidad del cuadro de mandos con su efecto flotante.\n\n- MMI Navegación plus con MMI touch de serie."
            precio = 194720
            imagenFondo.image = UIImage(named: "A-R8I.jpg")
            conf = "http://www.audi.es/es/web/es/modelos/r8/r8-coupe.html"
        }
        else if (info1 == "M2"){
            motor = "El tamaño no es decisivo, sino la fuerza.\n\nEl compacto motor de 6 cilindros en línea M del BMW M2 Coupé es la prueba definitiva. Este motor de 272 kW (370 CV) impulsa el vehículo de 1.485 kg sin esfuerzo hasta una velocidad máxima de hasta 250 km/h, ofreciendo una relación peso/potencia de 4,19 kg/CV. \n\nLas prestaciones elevadas y el sistema de refrigeración, probado en el circuito, aseguran una experiencia de conducción única."
            interior = "El interior del BMW M2 Coupé da la bienvenida al conductor y al acompañante con sus asientos deportivos en cuero ‘Dakota’ Schwarz. \n\nTodos los asientos incluyen el logotipo M grabado debajo de los reposacabezas así como costura de contraste en Blau. \n\nLos mandos están sistemáticamente orientados al conductor, garantizándose un acceso rápido y preciso a las principales funciones. \n\nLas molduras interiores de carbono de poro abierto, el volante M de cuero y las dos esferas circulares con agujas rojas realzan la naturaleza deportiva del vehículo. \n\nNumerosas aplicaciones, como el guarnecido interior del techo BMW Individual Anthrazit, mejoran aún más su aspecto llamativo."
            precio = 62900
            imagenFondo.image = UIImage(named: "B-M2I.jpg")
            conf = "https://www.bmw.es/vc/ncc/xhtml/start/startWithConfigUrl.faces?country=ES&market=ESPT&productType=1&brand=BM&locale=es_ES&name=x5p5s2r1#MODEL_ENGINE"
            
        }
        else if (info1 == "M3"){
            motor = "En el centro del BMW M3 late el nuevo motor de gasolina de 6 cilindros BMW M TwinPower Turbo. \nCon una potencia tremenda y un sonido inconfundible. \nLa interacción de tecnologías perfectamente sintonizadas del automovilismo deportivo asegura la entrega directa de una potencia de 317 kW (431 CV).\n\n- Cilindros/válvulas: 6/4\n\n- Cilindrada (cm3): 2979\n\n- Diámetro/carrera (mm): 89,6/84,0\n\n- Potencia máxima en KW (CV) a 1/min rev: 317 (431)/5500-7300\n\n- Par máximo en Nm a 1/min rev: 550/1850-5500\n\n- Ratio de compresión 1 : 10,2:1"
            interior = "El carácter de automovilismo deportivo del BMW M3 se prolonga en el interior. \n\nLos nuevos asientos M envolventes con el logotipo M iluminado proporcionan una ergonomía y una estabilidad lateral perfectas. \n\nIncluso en situaciones de conducción muy dinámicas, garantizan la conexión directa entre el conductor y el vehículo, que refuerza el típico diseño M de orientación al conductor. \n\nLa fluida transición entre el cuadro de instrumentos y la consola central pone al conductor en el centro del puesto de conducción. \n\nEn combinación con las superficies de aluminio de gran calidad, se crea un ambiente caracterizado por la deportividad y la tecnología de vanguardia que acelera el pulso del conductor en cuanto se sienta al volante. \n\nSe percibe desde el primer instante: si estás sentado aquí, estás preparado para disfrutar de una experiencia de conducción extraordinaria."
            precio = 89950
            imagenFondo.image = UIImage(named: "B-M3I.png")
            conf = "https://www.bmw.es/vc/ncc/xhtml/start/startWithConfigUrl.faces?country=ES&market=ESPT&productType=1&brand=BM&locale=es_ES&name=z4b5a9p9#MODEL_ENGINE"
        }
        else if (info1 == "M4"){
            motor = "- Cilindros/válvulas: 6/4\n\n- Cilindrada (cm3): 2979\n\n- Diámetro/carrera (mm): 89,6/84,0\n\n- Potencia máxima en KW (CV) a 1/min rev: 317 (431)/5500-7300\n\n- Par máximo en Nm a 1/min rev: 550/1850-5500\n\n- Ratio de compresión 1 : 10,2:1"
            interior = "En el interior del coche, los asientos M de diseño con su forma envolvente y el logotipo M iluminado esperan al conductor y al acompañante.\n\nOfrecen una estabilidad lateral perfecta y, gracias al empleo inteligente de la ergonomía, mantienen una conexión directa entre el conductor y el vehículo.\n\nTodos los elementos de mando del puesto de conducción están orientados al conductor y garantizan un control de gran precisión en una fracción de segundo.\n\nUn cuadro de instrumentos redondos de aspecto deportivo, el volante M de cuero y la palanca de cambio M completan el paquete y no dejan lugar a dudas. \n\nEl BMW M4 Coupé se creó para redefinir los límites."
            precio = 92900
            imagenFondo.image = UIImage(named: "B-M4I.jpg")
            conf = "https://www.bmw.es/vc/ncc/xhtml/start/startWithConfigUrl.faces?country=ES&market=ESPT&productType=1&brand=BM&locale=es_ES&name=r0s8q5k2#MODEL_ENGINE"
        }
        else if (info1 == "M6"){
            motor = "- Cilindros/válvulas: 8/4\n\n- Cilindrada (cm3): 4395\n\n- Diámetro/carrera (mm): 88,3/89,0\n\n- Potencia máxima en KW (CV) a 1/min rev: 412 (560)/6000-7000\n\n- Par máximo en Nm a 1/min rev: 680/1500-5750\n\n- Ratio de compresión 1 : 10,0:1"
            interior = "Las condiciones idóneas para conseguir los mejores tiempos: el interior del BMW M6 Coupé es perfecto para desafiar los límites. \nY todo ello sin renunciar al lujo y a los materiales más exclusivos. \n\nLa gama completa de la Colección BMW Individual está disponible de forma opcional.\n\nEn el puesto de conducción orientado al conductor, el volante de cuero ergonómico con levas de cambio integradas intensifica aún más la sensación de unión con el vehículo. \nCon solo pulsar un botón, se puede recuperar la configuración individual. \n\nLos asientos M multifunción (opcional), por ejemplo, con exclusivo cuero Merino de grano fino, proporcionan una sujeción lateral óptima incluso al trazar curvas a alta velocidad. \n\nEl guarnecido interior del techo en Alcantara Schwarz es uno de los detalles que rematan el concepto deportivo."
            precio = 154450
            imagenFondo.image = UIImage(named: "B-M6I.jpg")
            conf = "https://www.bmw.es/vc/ncc/xhtml/start/startWithConfigUrl.faces?country=ES&market=ESPT&productType=1&brand=BM&locale=es_ES&name=n6j9t7x1#MODEL_ENGINE"
        }
        else if (info1 == "i8"){
            motor = "- Cilindros/válvulas: 3/4 \n\n- Cilindrada (cm3): 1499 \n\n- Diámetro/carrera (mm): 94,6/82,0 \n\n- Par máximo en Nm a 1/min rev. : 320/3700 \n\n- Ratio de compresión 1 : 9,5:1 \n\n- Motor eléctrico: Potencia máxima en KW (CV): 96 \n\n- Par máximo en Nm: 250"
            interior = "- El aspecto deportivo del exterior se prolonga en el interior del BMW i8. Todos los elementos están dispuestos dinámicamente.\n\n- En el interior, el principio de capas crea una nueva relación entre funcionalidad y formas claras.\n\n- La construcción ligera también se aprecia visualmente. Por ejemplo, los elementos de fibra de carbono visibles en las molduras de entrada subrayan el bajo peso del BMW i8.\n\n El carácter de deportivo clásico y la orientación al conductor típica de BMW son evidentes en el diseño.\n\n- La consola central está alineada hacia el conductor. Todos los instrumentos y el cuadro de instrumentos digital con sus dos grandes pantallas son fáciles de manejar.\n\n- Todos los ocupantes disfrutan de una posición baja y los asientos ligeros y estrechos facilitan una sujeción fiable y una gran comodidad incluso cuando se toman las curvas a gran velocidad.\n\n- El controlador iDrive está convenientemente situado en la consola central, que divide ópticamente al vehículo."
            precio = 141850
            imagenFondo.image = UIImage(named: "B-i8I.jpg")
            conf = "https://www.bmw.es/vc/ncc/xhtml/start/startWithConfigUrl.faces?country=ES&market=ESPT&productType=1&brand=BI&locale=es_ES&name=a7n9c4p7#MODEL_ENGINE"
        }
        else if (info1 == "Clase A AMG"){
            motor = "- En 4,2 segundos de 0 a 100 km/h: el Mercedes-AMG A 45 es una fuerza de la naturaleza.\n\n- Con una potencia de 280 kW[1] (381 CV) y un par motor máximo de 475 Nm el vehículo se lanza a la carretera con una fuerza inusitada desatando el furor tras de sí.\n\n- El propulsor se siente tan especial como su método de fabricación: de manera completamente artesanal según el principio de AMG «un hombre, un motor». \n\n- Mercedes-AMG A 45 4MATIC: consumo de combustible, ciclo mixto: 7,3-6,9 l/100 km, emisiones de CO2, ciclo mixto: 171–162 g/km."
            interior = "- Su diseño escultural y elementos voluminosos convierten al Mercedes-AMG A 45 en todo un atleta y brindan unas prestaciones al nivel del automovilismo deportivo. \n\n- El faldón delantero en diseño A-Wing envía una clara señal: se trata de un vehículo con ansias innatas por avanzar."
            precio = 58325
            imagenFondo.image = UIImage(named: "M-ClaseAI.jpg")
            conf = "https://configurator.mercedes-benz.com/configurador/es/es/clase-a/compacto/carconfig?model=1760521&subprocess=CCci&accountID=daimpces"
        }
        else if (info1 == "CLA AMG"){
            motor = "- Por sus venas corre gasolina. Buena prueba de ello da el motor con turbocompresor de 4 cilindros de serie más potente del mundo, con 280 kW[1] (381 CV).\n\n- Su potencia por litro de cilindrada, 141 kW/l (191 CV), supera a la de la mayoría de los superdeportivos.\n\n- Un turbocompresor de doble entrada asegura una respuesta espontánea y máxima agilidad.\n\n- Pone a disposición hasta 475 Nm de par.\n\n- Mercedes-AMG CLA 45 4MATIC: consumo de combustible, ciclo mixto: 7,3-6,9 l/100 km, emisiones de CO2, ciclo mixto: 171–162 g/km"
            interior = "- Un diseño vanguardista que desafía lo establecido. La zaga del Mercedes-AMG CLA 45 Coupé se ha perfeccionado siguiendo el lema «más empuje, menos fuerza ascensional». \n\n- Detalles expresivos como el faldón trasero de nuevo diseño con cuatro perfiles verticales a modo de difusor, perfiles aerodinámicos laterales y salidas de aire estéticas como componentes del paquete aerodinámico dejan patente el dinamismo sin precedentes de este modelo.\n\n- El broche final lo ponen los dos embellecedores cromados en la salida doble de escape y la sonoridad rotunda del equipo de escape deportivo AMG."
            precio = 65125
            imagenFondo.image = UIImage(named: "M-CLAI.jpg")
        }
        else if (info1 == "GLA AMG"){
            motor = "- Por sus venas corre gasolina. Buena prueba de ello da el motor con turbocompresor de 4 cilindros de serie más potente del mundo, con 280 kW[1] (381 CV).\n\n- Su potencia por litro de cilindrada, 141 kW/l (191 CV), supera a la de la mayoría de los superdeportivos.\n\n- El turbocompresor Twinscroll es la clave de una respuesta espontánea y máxima agilidad. \n\n- Mercedes-AMG GLA 45 4MATIC: consumo de combustible, ciclo mixto: 7,4 l/100 km, emisiones de CO2, ciclo mixto: 172 g/km"
            interior = "- El Mercedes-AMG GLA 45 presenta un diseño arrebatador. El nuevo perfil aerodinámico y el faldón trasero AMG en efecto difusor reducen las fuerzas ascensionales en el eje trasero y mantienen al vehículo pegado a la calzada.\n\n- Un elemento consolidado en el frontal: la parrilla del radiador AMG con lama doble en cromo plateado y el faldón delantero AMG con perfil A-Wing.\n\n- Amplias entradas para el aire de refrigeración y llamativas lamas en todas las tomas de aire subrayan la presencia dinámica y segura del vehículo. De este modo, este SUV compacto se mueve también con soltura sobre cualquier terreno."
            precio = 71000
            imagenFondo.image = UIImage(named: "M-GLAI.jpg")
            conf = "https://configurator.mercedes-benz.com/configurador/es/es/cla/coupe/carconfig?model=1173521&subprocess=CCci&accountID=daimpces"
        }
        else if (info1 == "C63 AMG"){
            motor = "- El diferencial autoblocante con regulación electrónica del Mercedes-AMG C 63 S distribuye hasta 700 Nm[1] al eje trasero, ofreciendo a ambas ruedas de 20 pulgadas una tracción ideal.\n\n- La dirección paramétrica deportiva brinda una respuesta precisa. El resultado: auténtico placer de conducción en cualquier situación.\n\n- Consumo de combustible del Mercedes-AMG C 63 en el ciclo mixto: 11,9–11,4 l/100 km, emisiones de CO2, ciclo mixto: 200 g/km;\n\n- Consumo de combustible del Mercedes-AMG C 63 S en el ciclo mixto: 8,6 l/100 km; emisiones de CO2, ciclo mixto: 200 g/km"
            interior = "- Mucho más que una serie de componentes de altas prestaciones: el Mercedes-AMG C 63 es el resultado de una filosofía de desarrollo de automóviles en la que la forma y la función van de la mano.\n\n- Los guardabarros ensanchados 64 milímetros en el eje delantero y 66 milímetros en el robusto eje trasero dotan al C 63 Coupé de una apariencia aún más deportiva y una mejor estabilidad en carretera.\n\n- Así de elegante puede presentarse la potencia en estado puro"
            precio = 98475
            imagenFondo.image = UIImage(named: "M-C63I.jpg")
            conf = "https://configurator.mercedes-benz.com/configurador/es/es/clase-c/coupe/carconfig?model=2053861&subprocess=CCci&accountID=daimpces"
        }
        else if (info1 == "GT AMG"){
            motor = "- Los parámetros de un auténtico deportista de élite. De 0 a 100 en una cota impresionante de cuatro segundos, y una velocidad máxima de 304 km/h. No hay más que un automóvil capaz de adelantar al Mercedes-AMG GT: el Mercedes-AMG GT S.\n\n- Su datos característicos: 3,8 segundos y una velocidad máxima de 310 km/h. Entusiasmo en un tiempo récord.\n\n- Mercedes-AMG GT: consumo de combustible, ciclo mixto: 9,3 l/100 km, emisiones de CO2, ciclo mixto: 216 g/km\n\n- Mercedes-AMG GT S: consumo de combustible, ciclo mixto: 9,6-9,4 l/100 km, emisiones de CO2, ciclo mixto: 224–219 g/km"
            interior = "- Deportividad y emociones son los rasgos característicos del Mercedes-AMG GT. Sus formas auténticas y una poderosa silueta cautivan antes incluso de tomar asiento a bordo.\n\n- Una impresión que continúa en el interior: perfección sin igual hasta el más pequeño detalle. Fascinante como pocos automóviles deportivos."
            precio = 147100
            imagenFondo.image = UIImage(named: "M-GTI.jpg")
            conf = "https://configurator.mercedes-benz.com/configurador/es/es/merdeces-amg-gt/coupe/carconfig?model=1903771&subprocess=CCci&accountID=daimpces"
            
        }
        else if (info1 == "ClioRS"){
            motor = "- Velocidad máxima 230\n\n- Aceleración 0-100 km/h(s): 6,7\n\n- Aceleración 0-1000 m (s)27,1\n\n- Consumo urbano (l/100 km) 8,1\n\n- Consumo extraurbano (l/100 km) 5,1\n\n- Consumo medio (l/100 km): 6,3\n\n- Emisiones de CO2 (gr/km)144"
            interior = "- ¡Resalta entre la multitud! Renault CLIO R.S. 200 EDC juega con su lado elegante y deportivo, con asientos piel negra y costuras rojas; tapicería exclusiva de Renault Sport.\n\n- Incorporados en el sistema de aire acondicionado, un sensor de toxicidad y un filtro combinado ayudan a reducir el nivel de partículas contaminantes dentro del compartimiento de pasajeros."
            precio = 23650
            imagenFondo.image = UIImage(named: "R-ClioI.jpg")
            conf = "http://www.renault.es/gama-renault/vehiculos-renault-sport/clio/renault-clio-rs/"
            
        }
        else if (info1 == "MeganeRS"){
            motor = "- Velocidad máxima (km/h) 255\n\n- Aceleración 0-100 km/h (s): 6,0\n\n- Aceleración 0-1000 m (s)25,4\n\n- Consumo urbano (l/100 km) 11,3\n\n- Consumo extraurbano (l/100 km) 6,5\n\n- Consumo medio (l/100 km) 8,2\n\n- Emisiones de CO2 (gr/km)190"
            interior = "El Mégane Coupé R.S. conjuga la esencia deportiva y el confort para tu día a día. El estilo y la calidad del cockpit se funden con su ergonomía para hacerte sentir el placer de cada viaje.\n\n Para tomar las curvas como sólo una Coupé Mégane sabe, es necesario estar bien sujetado, y sólo es posible gracias a sus auténticas butacas deportivas desarrolladas específicamente para este modelo.\n\n Permite ingresar y encender el vehículo con solo detectar la presencia de la tarjeta, y luego cierra automáticamente al alejarse del auto; y la función de “global closing” (ventanas y puertas) y de activación de luces “follow me home” (encendido remoto de luces bajas por un lapso de 60 segundos, para facilitar el ingreso a casa)."
            precio = 26870
            imagenFondo.image = UIImage(named: "R-MeganeI.jpg")
            conf = "http://www.renault.es/gama-renault/vehiculos-renault-sport/megane/megane-gt/"
            
        }
        else if (info1 == "Ibiza Cupra"){
            motor = "- Velocidad máxima (km/h) 235; Aceleración 0-100 km/h (s): 6,7 \n\n- Aceleración 0-1000 m(s): 27,3\n\n- Recuperación 80-120 km/h en 4ª (s)--\n\n- Consumo urbano (l/100 km): 7,8 \n\n- Consumo extraurbano (l/100 km): 5,3\n\n- Consumo medio (l/100 km): 6,2\n\n- Emisiones de CO2 (gr/km): 145"
            interior = "- SEAT Ibiza Cupra, con conectividad Full Link y SEAT Connect Conjugándose con el sistema MirrorLink, SEAT Full Link incorpora las funciones de Apple Car Play y de Android Auto. \nDe esta forma, el conductor puede mantenerse en línea y controlar funciones del Smartphone, GPS y música, a través de la pantalla táctil, ubicada en el tablero.\n\n- Por su parte, la SEAT DriveApp ofrece diversas funciones que pueden utilizarse tanto dentro como fuera del auto, como por ejemplo, permite personalizar la pantalla táctil del vehículo con contactos o con la información del tiempo local.\n\n- De igual forma, DriveApp utiliza funciones de conversión texto-voz para leer en voz alta las últimas actualizaciones de Facebook o Twitter."
            precio = 31250
            imagenFondo.image = UIImage(named: "S-IbizaI.jpg")
            
        }
        else if (info1 == "Leon Cupra"){
            motor = "- Potencia de 300 cv, POTENCIA MÁX.: 5.500 - 6.200 RPM. \n\n -380 Nm PAR MOTOR MÁX.: 1.800 - 5.500 RPM\n\n- 250 km/h VELOCIDAD MÁX. \n\n- 5,7 s ACELERACIÓN 0-100 km/h.\n\n- 4 CILINDROS; 1984 cc CILINDRADA; 9,3\n\n- RELACIÓN DE COMPRESIÓN; 82,5 / 92,8 mm\n\n- DIÁMETRO X CARRERA; 158 g/km EMISIONES DE CO2"
            interior = "- Con ocho colores diferentes para elegir, puedes subir la temperatura del interior del Nuevo SEAT León CUPRA... o mantener siempre su frescura. Te sientas como te sientas en la carretera, existe un color que combina con tu estado de ánimo.\n\n- Con el CUPRA siempre contarás con los acabados más dinámicos, hasta el más mínimo detalle. Viene equipado con un interior de alta calidad, diseñado de forma ergonómica para que puedas disfrutar de cada momento del trayecto y para que estar en la carretera sea un placer absoluto."
            precio = 31250
            imagenFondo.image = UIImage(named: "S-LeonI.jpeg")
            conf = "http://configurador.seat.es/seat-cc/desktop-desktop-003_DEFAULT-es-normal.view?msk=2"
            
        }
        else if (info1 == "Golf R"){
            motor = "- El Volkswagen Golf R 2017 incorpora el motor turboalimentado de gasolina 2.0 TSI de 310 CV de potencia máxima. \nEste incremento de potencia supone 10 CV más que la anterior versión -300 CV-.\nPor su parte, el par motor anunciado es de 40,78 mkg. \n\n- Las prestaciones iniciales anunciadas para el VW Golf R 2017 son realmente buenas, con una aceleración de 0 a 100 km/h en 4,6 segundos.\n\n- En términos de eficiencia, la firma alemana con sede en Wolfsburg homologa un gasto medio de combustible de entre 7,0 y 7,9 l/100 km (según los tipos de neumáticos y de llantas) y de 7,2 l/100 km para el Golf R Variant (con carrocería familiar). "
            interior = "- Car-Net® App-Connect de Volkswagen.Un sistema de audio premium. Y un monitor de alto desempeño.\n- El Golf R demuestra que la tecnología de su interior es tan avanzada como la que tiene bajo el capó.\n\n SiriusXM te permite disfrutar de música, deportes, debates y del mejor entretenimiento en tu próximo viaje por la carretera.\n\nVW Car-Net App-Connect te permite seleccionar aplicaciones de tu smartphone compatible directamente desde tu pantalla táctil."
            precio = 43870
            imagenFondo.image = UIImage(named: "V-GolfI.jpg")
            conf = "https://www.volkswagen.es/app/configurador/vw-es/es/nuevo-golf/30316/37243/r?page=engine"
            
        }
        else if (info1 == "Scirocco R"){
            motor = "- Tipo de combustible: Gasolina.\n- Posición motor: Delantero transversal.\n- Cilindrada (cc): 1984.\n- Número de cilindros: 4.\n- Válvulas por cilindro: 4.\n- Alimentación: Inyección directa.\n- Distribución: 4 valvulas por cilindro.\n- Dos árboles de levas en la culata.\n- Sistema Stop&Start.\n- Poténcia máxima Cv/rpm:  6000.\n- Par máximo (Nm / rpm): 350."
            interior = "- Disfruta de la hermosa sensación que da la textura de cuero en el volante deportivo, la palanca del freno de mano y la palanca de cambios.\n- El obturador sobre la consola central mantiene todo ordenado en un momento mientras que el cromo en el interruptor de luces resalta el ambiente de la alta calidad del interior.\n- Además, la pantalla multifunción Plus te permite conocer información importante como el consumo de combustible o el nivel y la temperatura del aceite de un vistazo."
            precio = 34203
            imagenFondo.image = UIImage(named: "V-SciroccoI.jpg")
        }
        
        pintaCoche(posicion: 0)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return optionRol3[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return optionRol3.count
    }
    
    
    func pintaCoche (posicion: Int) {
        
        if(posicionRol3 == 0){
            descripcion.text = motor
        }
        else if(posicionRol3 == 1){
            descripcion.text = interior
        }
        else if(posicionRol3 == 2){
            descripcion.text = "Desde "+String(precio)+" €"
        }
         else if(posicionRol3 == 3){
         descripcion.text = conf
         }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        posicionRol3 = row
        pintaCoche(posicion: posicionRol3)
        
        
        
    }
    @IBAction func volver (segue : UIStoryboardSegue){
        
        _ = segue.source as! ViewController5
       // _ = segue.source as! ViewController4
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="Detalle2" {
            let dest = segue.destination as! ViewController4
            dest.info2 = label3.text!
            dest.preciotasar = precio
            // No consigo pasar el precio almacenado en una variable a la siguiente pantalla, no recoge el valor del precio del vehículo que esté seleccionado
        }
        else if segue.identifier=="Detalle5"{
            let desti = segue.destination as! ViewController5
            desti.varWeb = conf
        
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
