
import 'package:comida_rapida/src/data/menu_items.dart';
import 'package:comida_rapida/src/model/menu_item.dart';
import 'package:comida_rapida/src/pages/pedido_page.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.all(5),
          child: const  Image(
            image: AssetImage('assets/images/iconoPagina.png')),
        ),
        actions: [
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemsFirst.map(buildItem).toList(),
            ]
            
          )
        ],
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            
            decoration: BoxDecoration(
              color: Colors.amber[300]
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "EL GUSTITO",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red[900]
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        "HAMBURGUESAS",
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cards('Hamburguesa', 'Hamburguesa Simple', 15, const AssetImage('assets/images/hamburgesa2.jpg')),
                    //const SizedBox(width: 0,),
                    cards('Hamburguesa Doble', 'Hamburguesa doble ', 23, const AssetImage('assets/images/hamburgesa2.jpg'))
                  ],
                ),
                //const SizedBox(height: 20,),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red[900]
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        "POLLO FRITO",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                ),
                //const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cards('Pollo frito', 'Pollo con salsa', 35, const AssetImage('assets/images/pollo.jpg')),
                    //const SizedBox(width: 20,),
                    cards('Pollo al Horno', 'Alas de pollo', 20, const AssetImage('assets/images/pollo2.jpg'))
                  ],
                ),
                const SizedBox(height: 20,),





                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red[900]
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        "COMBOS",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cards('Combo1', 'Hamburguesa con papas fritas', 45, const AssetImage('assets/images/combo1.png')),
                    //const SizedBox(width: 40,),
                    cards('Combo 2  Doble', 'Hamburguesa con doble carne', 33, const AssetImage('assets/images/combo2.jpg'))
                  ],
                ),
                const SizedBox(height: 20,),

              ],
            ),
          ),
        ],
      ),




      
    );
  }
  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
    value: item,
    child: Row(
      children: [
        Icon(item.icon, color: Colors.black, size: 20,),
        const SizedBox(width: 12,),
        Text(item.text)
      ],
    )
  );

  void onSelected(BuildContext context, MenuItem item){
    switch(item){
      case MenuItems.itemLogin:
        Navigator.pushNamed(context, 'registro');
        break;
      
    }
    switch(item){
      case MenuItems.itemRegistrarse:
        Navigator.pushNamed(context, 'registro');
        break;
      
    }

    switch(item){
      case MenuItems.itemSobreNosot:
        Navigator.pushNamed(context, 'registro');
        break;
      
    }
  }

  Widget cards(String nom, String descrip, int precio, ImageProvider img){
    return Container(
      margin: const EdgeInsets.all(10),
      width: 170,
      height: 335,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 230, 183, 45),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3.5),
            child: Image(
              image: img,
              height: 150,
              fit: BoxFit.cover,
              
            ),
          ),
          const SizedBox(height: 10,),

          Container(
            padding: const EdgeInsets.all(0.5),
            child: const Text(
              'Nombre Producto',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(0.5),
            child: Text(
              nom,
              style: const TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),
          ),

          
          Container(
            padding: const EdgeInsets.all(0.5),
            child: const Text(
              'Descripción',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(0.5),
            child: Text(
              descrip,
              style: const TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(6),
            child: Text(
              'Precio: $precio',
              style: const TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),
          ),

          RaisedButton(
            child: const Text(
              'Comprar',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PedidoPage(nombre: nom, descripcion: descrip, precio: precio, image: img,),
              ));
            },
            color: Colors.red[900],
          )

        ],
      ),
    );
  }
}
