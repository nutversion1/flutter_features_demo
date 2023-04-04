import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/routes.dart';

class BPage extends StatefulWidget {
  final String text1;

  const BPage({
    super.key,
    required this.text1,
  });

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  bool isDarkBackground = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('B Page'),
        automaticallyImplyLeading: kIsWeb ? false : true,
      ),
      body: Container(
        color: isDarkBackground ? Colors.grey : Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text('B1 Page'),
              onTap: () => context.pushNamed(
                routeB1,
                queryParams: {'t1': 'PageB1'},
              ),
            ),
            ListTile(
              title: Text('B2 Page'),
              onTap: () => context.pushNamed(routeB2),
            ),
            SizedBox(height: 20),
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
                    context.go(routeInitial);
                  },
                  child: Text('Home Page')),
            ),
          ],
        ),
      ),
    );
  }
}
