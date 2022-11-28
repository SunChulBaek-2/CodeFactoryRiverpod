import 'package:codefactory_riverpod/screen/auto_dispose_modifier_screen.dart';
import 'package:codefactory_riverpod/screen/family_modifier_screen.dart';
import 'package:codefactory_riverpod/screen/future_provider_screen.dart';
import 'package:codefactory_riverpod/screen/home_screen.dart';
import 'package:codefactory_riverpod/screen/state_notifier_provider.dart';
import 'package:codefactory_riverpod/screen/state_provider_screen.dart';
import 'package:codefactory_riverpod/screen/stream_provider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: HomeScreen(),
        onGenerateRoute: (settings) => PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              if (settings.name == StateProviderScreen.routeName) {
                return StateProviderScreen();
              } else if (settings.name == StateNotifierProviderScreen.routeName) {
                return StateNotifierProviderScreen();
              } else if (settings.name == FutureProviderScreen.routeName) {
                return FutureProviderScreen();
              } else if (settings.name == StreamProviderScreen.routeName) {
                return StreamProviderScreen();
              } else if (settings.name == FamilyModifierScreen.routeName) {
                return FamilyModifierScreen();
              } else if (settings.name == AutoDisposeModifierScreen.routeName) {
                return AutoDisposeModifierScreen();
              }
              throw Exception();
            },
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return SlideTransition(
                  position: animation.drive(tween),
                  child: child
              );
            }
        )
      )
    )
  );
}