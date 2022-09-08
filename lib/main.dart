import 'package:azahira/foods.dart';
import 'package:flutter/material.dart';
import 'constants.dart' as constants;
import 'foods.dart';
import 'accounts.dart';
import 'topics.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container()
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(constants.appColor, Icons.fastfood, constants.foodLabel, context),
        _buildButtonColumn(constants.appColor, Icons.euro, constants.accountsLabel, context),
        _buildButtonColumn(constants.appColor, Icons.newspaper, constants.topicsLabel, context),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        '',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: constants.appLabel,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(constants.appLabel),
          backgroundColor: constants.appColor,
        ),
        body: ListView(
          children: [
            Image.asset(
              constants.imagePath,
              fit: BoxFit.fill,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  InkWell _buildButtonColumn(Color color, IconData icon, String label, context) {
    return InkWell(
        onTap: () {
          if (constants.foodLabel == label) {
            Navigator.of(context).push(_openFoodsPage());
          } else if (constants.accountsLabel == label) {
            Navigator.of(context).push(_openAccountsPage());
          } else if (constants.topicsLabel == label) {
            Navigator.of(context).push(_openTopicsPage());
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ),
          ],
        ));
  }

  Route _openAccountsPage() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
      const AccountsPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _openTopicsPage() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
      const TopicsPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Route<Object?> _openFoodsPage() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
      const FoodsPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
