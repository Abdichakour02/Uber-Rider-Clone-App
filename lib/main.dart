import 'package:flutter/material.dart';
import 'package:rider_app/MySplashScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
      child: MaterialApp(
    title: "uber",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const MySplashScreen(),
    debugShowCheckedModeBanner: false,
  )));
}

class MyApp extends StatefulWidget {
  // const MyApp({super.key});
  final Widget? child;
  const MyApp({super.key, this.child});
  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyApp>()!.restartApp();
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return KeyedSubtree(key: key, child: widget.child!);
  }
}
