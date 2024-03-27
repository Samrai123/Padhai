import 'package:eduhub/riv_models/riv_models.dart';

class NavItemModel {
  final String title;
  final RiveModel rive;
  NavItemModel({required this.title, required this.rive});
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(
      title: 'Chat',
      rive: RiveModel(
          src: 'asset/animated-icons.riv',
          artboard: "CHAT",
          stateMachineName: "CHAT_Interactivity")),
  NavItemModel(
      title: 'Chat',
      rive: RiveModel(
          src: "assets/animated-icons.riv",
          artboard: "SEARCH",
          stateMachineName: "SEARCH_Interactivity")),
];
