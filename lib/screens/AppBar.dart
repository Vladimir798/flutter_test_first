import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen ({Key? key}) : super(key: key);

  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle=
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar (
          title: const Text ('Заголовок'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.account_balance)
            ),
            IconButton(
              tooltip: 'Баланс',
                onPressed: () {}, icon: Icon(Icons.settings)
            ),
            TextButton(
              onPressed: () {},
              child: const Text ('Профиль'),
              style: buttonStyle,
            ),
          ],
        ),
        body: Center(child: Text ('Контент')),
      ),
    );
  }
}