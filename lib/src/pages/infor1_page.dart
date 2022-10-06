import 'package:comida_rapida/src/pages/infor3_page.dart';
import 'package:flutter/material.dart';

class InforPage extends StatelessWidget {
  const InforPage({ 
    Key? key,
    required this.nombre, 
     required this.descripcion, 
     required this.image 
  }) : super(key: key);

  final String nombre;
  final String descripcion;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[400],
        child: ListView(
          children: [
            Container(
              width: 300,
              height: 250,
              padding: const  EdgeInsets.all(10),
              margin: const  EdgeInsets.only(left: 20, top: 20, bottom: 40, right: 20),
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.red[900],
                borderRadius: const BorderRadius.only(topRight: Radius.circular(25), bottomLeft: Radius.circular(25))
              ),
              child: Image(
                fit: BoxFit.fill,
                image: image,
                
              ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'INGREDIENTES:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[500]
                ),
              ),
            ),

            Container(
              padding: const  EdgeInsets.symmetric(horizontal: 40 , vertical: 20),
              child: const Text(
                '-4 mazorcas grandes                                             - 8 patatas Pureja                                                     - 1 libra de frijoles en la cáscara                           - 1 queso mediano                                                             - 1 cucharada de azúcar                                         - 1 cucharadita de aní                                             - Sal al gusto                                                             - Aceite',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


  
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'PREPARACION:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[500]
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(20),
              child: const  Text(
                '1. Poner a hervir el agua, el anís y el azúcar en una olla grande. En el mismo lugar, cocer el maíz y los frijoles en la cáscara a fuego alto durante 25 minutos.                                                 2. Cocine las papas en el recipiente en agua salada al gusto.                                                      3. Cortar el queso en rodajas y hornearlas en el horno.                                                                      4. Sirva un maíz, una rebanada de queso frito, una papa, frijoles y una cucharada de llajwa por plato.                                                                    5. Originalmente un plato vegetariano, pero con el paso de los años se ha añadido un bistec de res a esta receta en algunas casas',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            Container(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: RaisedButton(
                child: const Text(
                  'AÑADIR COMPRA',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.red[900],
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => InforCompra(nombre: nombre, descripcion:descripcion, image: image),
                  ));
                },
              ),

            ),

            const SizedBox(height: 30,)



          ],
        ),
      ),
    );
  }
}