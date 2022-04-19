import 'package:equatable/equatable.dart';
import 'package:smart_farm/modal/data_modal.dart';
/*
Every cubit app has one initial state,
States hold data which triggers rebuild of UI
when a cubit class is created, an Initial class/function should be passed to it


 */

abstract class CubitState extends Equatable{}

class InitialState extends CubitState{
  // Initial state passed to cubit
  @override
  // TODO: implement props
  List<Object?> get props => []; // holds data which triggers rebuild of UI when changed
}

class WelcomeState extends CubitState{

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitState{
  //triggered when trying to fetch data
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitState{
  // triggered when data is fetched
  final List<DataModel> places;

  LoadedState(this.places);

  @override
  // TODO: implement props
  List<Object> get props => [places]; //ui rebuild
}

class DetailState extends CubitState{
  // triggered when data is fetched
  final DataModel place;

  DetailState(this.place);

  @override
  // TODO: implement props
  List<Object> get props => [place]; //ui rebuild
}