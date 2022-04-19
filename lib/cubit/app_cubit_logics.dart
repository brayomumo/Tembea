import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_farm/cubit/app_cubit.dart';
import 'package:smart_farm/cubit/app_cubit_states.dart';
import 'package:smart_farm/pages/detail_page.dart';
import 'package:smart_farm/pages/home_pae.dart';
import 'package:smart_farm/pages/navpages/main_page.dart';
import 'package:smart_farm/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitState>(
        builder: (context, state){
            if(state is DetailState){
              return DetailPage();
            }if(state is WelcomeState){
              return WelcomePage();
            }if(state is LoadingState){
              return Center(child: CircularProgressIndicator(), );
            }
            if(state is LoadedState){
              return MainPage();
            }
            else{
              return Container();
            }
        },
      ),
    );
  }
}
