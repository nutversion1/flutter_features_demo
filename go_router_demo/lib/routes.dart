import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/pages/b1_page.dart';
import 'package:go_router_demo/pages/b2_page.dart';
import 'package:go_router_demo/pages/b_page.dart';
import 'package:go_router_demo/pages/error_page.dart';
import 'package:go_router_demo/pages/home_page.dart';
import 'package:go_router_demo/pages/a_page.dart';

const String routeInitial = '/';
const String routeA = 'a';
const String routeB = 'b';
const String routeB1 = 'b1';
const String routeB2 = 'b2';

final router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: routeInitial,
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          name: routeA,
          path: '$routeA/:text1/:text2',
          builder: (context, state) {
            return APage(
              text1: state.params['text1']!,
              text2: state.params['text2']!,
              text3: state.queryParams['text3']!,
              text4: state.queryParams['text4']!,
            );
          },
        ),
        GoRoute(
          name: routeB,
          path: routeB,
          builder: (context, state) {
            return const BPage();
          },
          routes: [
            GoRoute(
              name: routeB1,
              path: routeB1,
              builder: (context, state) {
                return const B1Page();
              },
            ),
            GoRoute(
              name: routeB2,
              path: routeB2,
              builder: (context, state) {
                return const B2Page();
              },
            ),
          ],
        ),
      ],
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(),
  ),
);
