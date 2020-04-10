import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:player_repository/player_repository.dart';
import 'package:scouting_repository/scouting_repository.dart';
import "package:user_repository/user_repository.dart";

import 'blocs/authentication_bloc/bloc.dart';
import "blocs/players/players.dart";
import 'blocs/scoutings/scoutings.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) {
            return AuthenticationBloc(
              userRepository: FirebaseUserRepository()
            )..add(AppStarted());
          },
        ),
        BlocProvider<ScoutingsBloc>(
          create: (context) {
            return ScoutingsBloc(
              scoutingRepository: FirebaseScoutingRepository()
            )..add(LoadScoutings());
          }
        ),
        BlocProvider<PlayersBloc>(
          create: (context) {
            return PlayersBloc(
              playerRepository: FirebasePlayerRepository()
            )..add(LoadPlayers());
          }
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Globescout Bloc",
        home: MainScreen(),
      )
    );
  }
}