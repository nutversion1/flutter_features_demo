import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/routes.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(routeInitial),
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
