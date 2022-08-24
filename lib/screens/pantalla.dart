import 'package:flutter/material.dart';
import 'package:calculadora/widgets/boton.dart';
import 'package:calculadora/widgets/linea.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';

class Pantalla extends StatelessWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const SubResult(text: '1'),
              const SubResult(text: 'x'),
              const SubResult(text: '1'),
              const Linea(),
              const MainResultText(text: '3.1416'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: 'ac',
                    bgColor: Color.fromARGB(255, 255, 143, 99),
                    // ignore: avoid_print
                    onPressed: () => print('AC'),
                  ),
                  Boton(
                    text: '+/-',
                    bgColor: Color.fromARGB(255, 255, 143, 99),
                    // ignore: avoid_print
                    onPressed: () => print('+/-'),
                  ),
                  Boton(
                    text: 'del',
                    bgColor: Color.fromARGB(255, 255, 143, 99),
                    // ignore: avoid_print
                    onPressed: () => print('del'),
                  ),
                  Boton(
                    text: '/',
                    bgColor: Colors.deepOrange,
                    onPressed: () => print('/'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '7',
                    // ignore: avoid_print
                    onPressed: () => print('7'),
                  ),
                  Boton(
                    text: '8',
                    // ignore: avoid_print
                    onPressed: () => print('8'),
                  ),
                  Boton(
                    text: '9',
                    // ignore: avoid_print
                    onPressed: () => print('9'),
                  ),
                  Boton(
                    text: 'X',
                    bgColor: Colors.deepOrange,
                    // ignore: avoid_print
                    onPressed: () => print('X'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '4',
                    // ignore: avoid_print
                    onPressed: () => print('4'),
                  ),
                  Boton(
                    text: '5',
                    // ignore: avoid_print
                    onPressed: () => print('5'),
                  ),
                  Boton(
                    text: '6',
                    // ignore: avoid_print
                    onPressed: () => print('6'),
                  ),
                  Boton(
                    text: '-',
                    bgColor: Colors.deepOrange,
                    // ignore: avoid_print
                    onPressed: () => print('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '1',
                    // ignore: avoid_print
                    onPressed: () => print('1'),
                  ),
                  Boton(
                    text: '2',
                    // ignore: avoid_print
                    onPressed: () => print('2'),
                  ),
                  Boton(
                    text: '3',
                    onPressed: () => print('3'),
                  ),
                  Boton(
                    text: '+',
                    bgColor: Colors.deepOrange,
                    // ignore: avoid_print
                    onPressed: () => print('+'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                    text: '0',
                    big: true,
                    // ignore: avoid_print
                    onPressed: () => print('0'),
                  ),
                  Boton(
                    text: '.',
                    // ignore: avoid_print
                    onPressed: () => print('.'),
                  ),
                  Boton(
                    text: '=',
                    bgColor: Colors.deepOrange,
                    onPressed: () => print('='),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 225, 216),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
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
