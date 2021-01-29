
import 'package:flutter/material.dart';

class CorteSel extends StatefulWidget {
  final String corte;
  final int dia;
  final String hora;
  final String servicio;
  final int costo;

  CorteSel({
    this.corte, this.dia, this.hora, this.servicio, this.costo
  });

  _CorteSelState createState() => _CorteSelState();

}

class _CorteSelState extends State<CorteSel> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'RuffBooking',
          style: TextStyle(
            fontFamily: 'FirSans',
            fontSize: 20.0,
            color: Colors.black
          )
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: <Widget> [
          Stack(
            children: <Widget> [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4.0
                    )
                  ],
                  color: Colors.white
                ),
              ),
              Positioned(
                top: 10.0,
                left: 15.0,
                right: 15.0,
                child: Container(
                  height: 120.0,
                  child: Column(
                    children: <Widget> [
                      Text(
                        'Corte: ${widget.corte}',
                        style: TextStyle(
                          fontFamily: 'FirSans',
                          fontSize: 20.0,
                          color: Colors.black
                        )
                      ),
                      Text(
                        'Dia: ${widget.dia}',
                        style: TextStyle(
                          fontFamily: 'FirSans',
                          fontSize: 20.0,
                          color: Colors.black
                        )
                      ),
                      Text(
                        'Hora: ${widget.hora}',
                        style: TextStyle(
                          fontFamily: 'FirSans',
                          fontSize: 20.0,
                          color: Colors.black
                        )
                      ),
                      Text(
                        'Servicio: ${widget.servicio}',
                        style: TextStyle(
                          fontFamily: 'FirSans',
                          fontSize: 20.0,
                          color: Colors.black
                        )
                      ),
                      Text(
                        'Costo: ${widget.costo}',
                        style: TextStyle(
                          fontFamily: 'FirSans',
                          fontSize: 20.0,
                          color: Colors.black
                        )
                      )
                    ],
                  ),
                )
              )
            ],
          ),
          SizedBox(height: 35.0,),
          Center(
            child: Image.asset('assets/ruffians.png')
          )
        ],
      ),
    );
  }
}