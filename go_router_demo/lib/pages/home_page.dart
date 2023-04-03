import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkBackground = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        color: isDarkBackground ? Colors.grey : Colors.white,
        child: Column(
          children: [
            ListTile(
              title: Text('A Page'),
              onTap: () => context.pushNamed(
                routeA,
                params: {
                  'text1': 'HelloWorld1',
                  'text2': 'HelloWorld2',
                },
                queryParams: {
                  'text3': 'HelloWorld3',
                  'text4': 'HelloWorld4',
                },
              ),
            ),
            ListTile(
              title: Text('B Page'),
              onTap: () => context.pushNamed(routeB),
            ),
            SizedBox(height: 20),
            SwitchListTile(
              value: isDarkBackground,
              onChanged: (newValue) {
                setState(() => isDarkBackground = newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
