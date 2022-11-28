import 'package:flutter/material.dart';
import 'package:shopping_app_ui/extensions/theme_x.dart';
import '/ui/main_screen/widgets/blur_widget.dart';
import '/ui/main_screen/widgets/list_widget.dart';
import '/ui/main_screen/widgets/menu_widget.dart';
import '/ui/main_screen/widgets/topbar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  bool isBig = false;
  double barHeight = 90;
  bool scrolling = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          ListWidget(
            scrolling: (value) {
              scrolling = value;
              setState(() {});
            },
          ),
          Positioned(
              top: isBig ? 0 : context.height,
              bottom: 0,
              left: 0,
              right: 0,
              child: BlurWidget(isBig: isBig)),
          MenuWidget(
            scrolling: scrolling,
            menuChange: (value) {
              isBig = value;
              setState(() {});
            },
          ),
          TopbarWidget(
            barHeight: barHeight,
            isBig: isBig,
          )
        ],
      ),
    );
  }
}
