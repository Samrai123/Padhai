import 'package:eduhub/riv_models/riv_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rive/rive.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  void _onRiveIconInit(Artboard artboard) {
    final controller =
        StateMachineController.fromArtboard(artboard, "HOME_interactivity");
    artboard.addController(controller!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SafeArea(
            child: Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.3),
                    )),
                child: RiveAnimation.network(
                  'https://cdn.rive.app/animations/vehicles.riv',
                ))));
  }
}
