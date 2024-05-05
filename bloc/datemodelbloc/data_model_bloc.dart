import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'data_model_event.dart';
part 'data_model_state.dart';

class DataModelBloc extends Bloc<DataModelEvent, DataModelState> {
  DataModelBloc() : super(DataModelInitial()) {
    on<DataModelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
