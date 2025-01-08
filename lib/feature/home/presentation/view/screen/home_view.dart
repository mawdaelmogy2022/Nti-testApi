import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapi/feature/home/cubit/post_cubit/post_cubit.dart';
import 'package:testapi/feature/home/cubit/post_cubit/post_cubit_statue.dart';
import 'package:testapi/feature/home/presentation/view/widget/custom_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostCubitStatue>(builder: (context, state) {
      if (state is Succestate) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.pink,
            title: const Text(
              'Posts',
              style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w700),
            ),
          ),
          body: ListView.builder(
            itemCount: state.model.length,
            itemBuilder: (context, index) {
              return CustomCard(postModel: state.model[index]);
            },
          ),
        );
      } else if (state is Failurestate) {
        return const Text('لا يوجد بيانات');
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
