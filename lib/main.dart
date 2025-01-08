import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapi/core/block_observer/blok_observer.dart';
import 'package:testapi/feature/home/cubit/post_cubit/post_cubit.dart';
import 'package:testapi/feature/home/presentation/view/screen/home_view.dart';

void main() {
   Bloc.observer = MyBlocObserver();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit()..getDatacubit(),
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
