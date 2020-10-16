import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_screens/feed.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        accentIconTheme: Theme.of(context).accentIconTheme.copyWith(
                color: Colors.black,
              ),
          textSelectionColor: Color.fromRGBO(57, 171, 219, 0.7),
          textSelectionHandleColor: Color.fromRGBO(57, 171, 219, 1.0),
          buttonColor: Colors.black,
          accentColor: Colors.deepOrange,
          primaryColor: Colors.white,
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(iconTheme: Theme.of(context).iconTheme),
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Roboto'),
          primaryTextTheme: Theme.of(context)
              .primaryTextTheme
              .apply(bodyColor: Colors.black, fontFamily: 'Raleway'),
        ),
      darkTheme: ThemeData.dark().copyWith(
          accentIconTheme: Theme
              .of(context)
              .accentIconTheme
              .copyWith(
            color: Colors.white,
          ),
          textSelectionColor: Color.fromRGBO(57, 171, 219, 0.7),
          textSelectionHandleColor: Color.fromRGBO(57, 171, 219, 1.0),
          buttonColor: Colors.white,
          accentColor: Colors.deepOrange,
          primaryColor: Colors.black,
          textTheme: Theme
              .of(context)
              .textTheme
              .apply(bodyColor: Colors.white, fontFamily: 'Roboto'),
          primaryTextTheme: Theme
              .of(context)
              .primaryTextTheme
              .apply(bodyColor: Colors.white, fontFamily: 'Raleway')),
      // home: CreatePost(),
      // home: PostUI.test(),
      //home: CreatePost(),
      //home: MessagingWidget(),
       home: Feed()
    );
  }
}
