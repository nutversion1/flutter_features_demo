import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/routes.dart';

class APage extends StatefulWidget {
  final String text1, text2, text3, text4;

  const APage({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  bool isDarkBackground = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A Page'),
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
            Text(
                '${widget.text1}\n${widget.text2}\n${widget.text3}\n${widget.text4}'),
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
