import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/routes.dart';

class B1Page extends StatefulWidget {
  final String text1;

  const B1Page({
    super.key,
    required this.text1,
  });

  @override
  State<B1Page> createState() => _B1PageState();
}

class _B1PageState extends State<B1Page> {
  bool isDarkBackground = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('B1 Page'),
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
            Text('${widget.text1}'),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // context.go(routeInitial);
                  context.pop();
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
