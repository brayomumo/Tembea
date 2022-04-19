import 'package:bloc/bloc.dart';

import '../modal/data_modal.dart';
import '../services/data_services.dart';
import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitState>{ // kind of states the cubit should have
  AppCubits({ required this.data}) : super(InitialState()){
    emit(WelcomeState()); // trigger WelcomeState
  } // initialize our initial state
  final DataServices data;
  late final places;
  Future<void> getData() async {
    try{
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    }catch(e){
      print(e);
    }
  }

  detailPage(DataModel data){
    emit(DetailState(data));
  }

  goHome(){
    emit(LoadedState(places));
  }
}