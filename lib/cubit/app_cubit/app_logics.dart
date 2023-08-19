import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/pages/main_page.dart';

import '../../pages/welcome_page.dart';
import 'app_cubit.dart';

class AppLogics extends StatefulWidget {
  const AppLogics({super.key});

  @override
  State<AppLogics> createState() => _AppLogicsState();
}

class _AppLogicsState extends State<AppLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          if (state is AppInitial) {
            return const WelcomePage();
          } else if (state is AppSuccess) {
            return const MainPage();
          } else if (state is AppLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Center(child: Text(state.runtimeType.toString()));
          }
        },
      ),
    );
  }
}
