import 'dart:ui';

import 'package:flutter/material.dart';

class InforCompra extends StatelessWidget {
  const InforCompra({ 
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
        padding: const EdgeInsets.all(10),
        color: Colors.amber[300],
        child: SafeArea(
          child: Column(
            children: [


              Column(
                children: [
                  
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red[400],
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 100,
                          height: 90,
                          child: Image(
                            image: image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),                    
                            child: Text(
                              nombre,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        const SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            descripcion,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black87
                            ),
                          ),
                        ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: const Text(
                                'Precio',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: const Text(
                                '\$15',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20,),

              Column(
                children: [
                  
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.red[400],
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 100,
                          height: 90,
                          child: const Image(
                            image: AssetImage('assets/images/pollo.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),                    
                            child: const Text(
                              'Pollo Frito',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        const SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Text(
                            'Pollo con salsa',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87
                            ),
                          ),
                        ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: const Text(
                                'Precio',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: const Text(
                                '\$35',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(left: 200),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: const Text(
                        'Total: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text(
                        '\$50',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ],
                ),
              )





            ],
          ),
        ),
        
      ),
    );
  }
}