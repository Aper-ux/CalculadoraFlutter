import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'operaciones_event.dart';
part 'operaciones_state.dart';

class OperacionesBloc extends Bloc<OperacionesEvent, OperacionesState> {
  OperacionesBloc() : super(OperacionesInitial()) {
    on<OperacionesEvent>((event, emit) {
    });
  }
}
