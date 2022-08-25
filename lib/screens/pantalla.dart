import 'package:calculadora/bloc/Operaciones/operaciones_bloc.dart';
import 'package:calculadora/widgets/panel.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/boton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pantalla extends StatelessWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opr = BlocProvider.of<OperacionesBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora FLutter'),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),

              //Panel de datos
              const Panel(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: 'ac',
                    bgColor: const Color.fromARGB(255, 255, 143, 99),
                    onPressed: () => opr.add(Limpiar()),
                  ),
                  Boton(
                    text: '+/-',
                    bgColor: const Color.fromARGB(255, 255, 143, 99),
                    onPressed: () => opr.add(PosNeg()),
                  ),
                  Boton(
                    text: 'del',
                    bgColor: const Color.fromARGB(255, 255, 143, 99),
                    onPressed: () => opr.add(Del()),
                  ),
                  Boton(
                    text: '/',
                    bgColor: Colors.deepOrange,
                    onPressed: () => opr.add(Operation('/')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '7',
                    onPressed: () => opr.add(Add('7')),
                  ),
                  Boton(
                    text: '8',
                    onPressed: () => opr.add(Add('8')),
                  ),
                  Boton(
                    text: '9',
                    onPressed: () => opr.add(Add('9')),
                  ),
                  Boton(
                    text: 'x',
                    bgColor: Colors.deepOrange,
                    onPressed: () => opr.add(Operation('x')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '4',
                    onPressed: () => opr.add(Add('4')),
                  ),
                  Boton(
                    text: '5',
                    onPressed: () => opr.add(Add('5')),
                  ),
                  Boton(
                    text: '6',
                    onPressed: () => opr.add(Add('6')),
                  ),
                  Boton(
                    text: '-',
                    bgColor: Colors.deepOrange,
                    onPressed: () => opr.add(Operation('-')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '1',
                    onPressed: () => opr.add(Add('1')),
                  ),
                  Boton(
                    text: '2',
                    onPressed: () => opr.add(Add('2')),
                  ),
                  Boton(
                    text: '3',
                    onPressed: () => opr.add(Add('3')),
                  ),
                  Boton(
                    text: '+',
                    bgColor: Colors.deepOrange,
                    onPressed: () => opr.add(Operation('+')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '0',
                    big: true,
                    onPressed: () => opr.add(Add('0')),
                  ),
                  Boton(
                    text: '.',
                    onPressed: () => opr.add(Add('.')),
                  ),
                  Boton(
                    text: '=',
                    bgColor: Colors.deepOrange,
                    onPressed: () => opr.add(Operar()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff333333),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.graphic_eq,
                  color: Colors.deepOrange,
                ),
                label: 'Limpiar'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.backspace_outlined,
                  color: Colors.deepOrange,
                ),
                label: 'Borrar')
          ]),
    );
  }
}
