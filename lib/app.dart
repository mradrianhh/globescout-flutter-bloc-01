import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globescout_bloc_01/screens/add_player_screen.dart';
import 'package:globescout_bloc_01/screens/add_scouting_screen.dart';
import 'package:globescout_bloc_01/screens/login_screen.dart';
import 'package:globescout_bloc_01/screens/player_screen.dart';
import 'package:globescout_bloc_01/screens/settings_screen.dart';
import 'package:globescout_bloc_01/screens/stats_screen.dart';
import 'package:player_repository/player_repository.dart';
import 'package:scouting_repository/scouting_repository.dart';
import "package:user_repository/user_repository.dart";

import 'blocs/authentication_bloc/bloc.dart';
import "blocs/players/players.dart";
import 'blocs/scoutings/scoutings.dart';
import 'color_palette.dart';
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
        routes: {
          "/login": (context) => LoginScreen(),
          "/": (context) => MainScreen(),
          "/add_player": (context) => AddPlayerScreen(),
          "/player": (context) => PlayerScreen(),
          "/add_scouting": (context) => AddScoutingScreen(),
          "/stats": (context) => StatsScreen(),
          "/settings": (context) => SettingsScreen(),
        },
        initialRoute: "/",
        title: "Globescout Bloc",
        theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColor: ColorPalette.primaryColor,
          primaryColorLight: ColorPalette.primaryLightColor,
          primaryColorDark: ColorPalette.primaryDarkColor,
          accentColor: Colors.blueAccent,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(
              color: ColorPalette.secondaryColor,
              size: 30.0,
            ),
            textTheme: TextTheme(
              title: TextStyle(
                fontSize: 38.0,
                color: ColorPalette.secondaryDarkColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}