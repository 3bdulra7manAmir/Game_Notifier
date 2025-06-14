import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/app_circular_indicator.dart';
import 'app_routes.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.kSplash,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CustomCircularIndicator()),),
    routes:
    [
      ///[App_Splash]
      // GoRoute(
      //   path: AppRoutes.kSplash,
      //   name: AppRoutes.kSplash,
      //   builder: (context, state) => const SplashScreen(),
      // ),
  

      /// App Bottom Navigation Bar
      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, navigationShell) => BottomNavExample(navigationShell: navigationShell),
      //   branches: [
      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.kHomeView,
      //       routes: [
      //         GoRoute(
      //           name: AppRoutes.kHomeView,
      //           path: AppRoutes.kHomeView,
      //           builder: (context, state) => const HomePage(),
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.kSearchView,
      //       routes: [
      //         GoRoute(
      //           name: AppRoutes.kSearchView,
      //           path: AppRoutes.kSearchView,
      //           builder: (context, state) => const SearchPage(),
      //         ),
      //       ],
      //     ),

      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.kProfileView,
      //       routes:
      //       [
      //         GoRoute(
      //           name: AppRoutes.kProfileView,
      //           path: AppRoutes.kProfileView,
      //           builder: (context, state) => const ProfilePage(),
      //         ),
      //       ],
      //     ),
      //   ],
      //),
    ],
  );
}
