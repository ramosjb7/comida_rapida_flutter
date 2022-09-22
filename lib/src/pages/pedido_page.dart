import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../data/menu_items.dart';
import '../model/menu_item.dart';

class PedidoPage extends StatelessWidget {
  const PedidoPage({
     Key? key, 
     required this.nombre, 
     required this.descripcion, 
     required this.precio, 
     required this.image 
  }) : super(key: key);

  final String nombre;
  final String descripcion;
  final int precio;
  final ImageProvider image;

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


      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber[300]
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const  Center(
                  child: Text(
                    'PEDIDOS',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

              Bounce(
                delay: const Duration(milliseconds: 200),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Image(
                    image: image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              _textoTitulo('Producto'),
              _textoDescripcion(nombre),
              _textoTitulo('Descripción'),
              _textoDescripcion(descripcion),
              _textoTitulo('Precio'),
              _textoDescripcion('$precio'),

              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(                      
                      borderSide: const  BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                )
              ),
              const SizedBox(height: 20,),

              MaterialButton(
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
                    child: Text(
                      'Calcular total',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      ),
                    ),
                  ),
                ),
                onPressed: (){
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      content: Container(
                        height: 230,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                _textoTitulo('Producto: '),
                                _textoDescripcion(nombre),
                              ],
                            ),

                            _textoTitulo('Descripción'),
                            _textoDescripcion(descripcion),

                            Row(
                              children: [
                                _textoTitulo('Precio unidad: '),
                                _textoDescripcion('$precio'),
                              ],
                            ),

                            Row(
                              children: [
                                _textoTitulo('Cantidad: '),
                                _textoDescripcion('5'),
                              ],
                            ),

                            Row(
                              children: [
                                _textoTitulo('Total'),
                                _textoDescripcion('\$75')
                              ],
                            ),

                          ],
                          
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          child: Text('ok')
                        )
                      ],
                    )
                  );
                },
              )
              

            ],
          ),
        ),
      )


    );
  }

  Widget _textoTitulo(String titulo){
    return Container(
      padding: const EdgeInsets.all(5),
      child: Text(
        '$titulo : ',
        style: const TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _textoDescripcion(String titulo){
    return Container(
      padding: const EdgeInsets.all(5),
      child: Text(
        titulo,
        style: const TextStyle(
          fontSize: 17,
        ),
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
}