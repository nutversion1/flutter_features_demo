import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/routes.dart';

class B2Page extends StatefulWidget {
  const B2Page({Key? key}) : super(key: key);

  @override
  State<B2Page> createState() => _B2PageState();
}

class _B2PageState extends State<B2Page> {
  bool isDarkBackground = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('B2 Page'),
        automaticallyImplyLeading: kIsWeb ? false : true,
      ),
      body: Container(
        color: isDarkBackground ? Colors.grey : Colors.white,
        child: Column(
          children: [
            SwitchListTile(
              value: isDarkBackground,
              onChanged: (newValue) {
                setState(() => isDarkBackground = newValue);
              },
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  context.go(routeInitial);
                },
                child: Text('Home Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
