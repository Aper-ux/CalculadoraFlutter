import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'operaciones_event.dart';
part 'operaciones_state.dart';

class OperacionesBloc extends Bloc<OperacionesEvent, OperacionesState> {
  OperacionesBloc() : super(OperacionesState());

  @override
  Stream<OperacionesState> mapEventToState(
    OperacionesEvent event,
  ) async* {
    //limpia el panel
    if (event is Limpiar) {
      yield* _Limpiar();
    }
    //Numeros
    else if (event is Add) {
      yield state.copyWith(
        resultado:
            (state.resultado == '0') ? event.n : state.resultado + event.n,
      );
    }
    //cambiar signo
    else if (event is PosNeg) {
      yield state.copyWith(
          resultado: state.resultado.contains('-')
              ? state.resultado.replaceFirst('-', '')
              : '-' + state.resultado);
    }
    //del
    else if (event is Del) {
      yield state.copyWith(
          resultado: state.resultado.length > 1
              ? state.resultado.substring(0, state.resultado.length - 1)
              : '0');
    }
    //operacion
    else if (event is Operation) {
      yield state.copyWith(
          primerentrada: state.resultado,
          resultado: '0',
          op: event.operation,
          segundaentrada: '0');
    }
    //obtener resultado =
    else if (event is Operar) {
      yield* _Operar();
    }
  }

  Stream<OperacionesState> _Limpiar() async* {
    yield OperacionesState(
        primerentrada: '0', resultado: '0', segundaentrada: '0', op: '+');
  }

  Stream<OperacionesState> _Operar() async* {
    final double n1 = double.parse(state.primerentrada);
    final double n2 = double.parse(state.resultado);

    switch (state.op) {
      case '+':
        double res = n1 + n2;
        yield state.copyWith(
            segundaentrada: state.resultado, resultado: '$res');
        break;
      case '-':
        double res = n1 - n2;
        yield state.copyWith(
            segundaentrada: state.resultado, resultado: '$res');
        break;
      case 'x':
        double res = n1 * n2;
        yield state.copyWith(
            segundaentrada: state.resultado, resultado: '$res');
        break;
      case '/':
        double res = n1 / n2;
        yield state.copyWith(
            segundaentrada: state.resultado, resultado: '$res');
        break;
      default:
        yield state;
    }
  }
}
