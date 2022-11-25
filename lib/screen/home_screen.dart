import 'package:codefactory_riverpod/layout/default_layout.dart';
import 'package:codefactory_riverpod/screen/state_provider_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: "HomeScreen",
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(StateProviderScreen.routeName);
            },
            child: Text('StateProviderScreen')
          )
        ],
      )
    );
  }
}