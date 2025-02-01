import 'package:go_router/go_router.dart';
import 'package:konaf_skora/core/routes/router_names.dart';
import 'package:konaf_skora/src/features/auth/presentation/view/register_view.dart';

import '../../src/features/intro/presentation/view/landing_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const LandingPageView(),
      ),

      GoRoute(
        path: RouterNames.register,
        builder: (context, state) =>const RegisterView(),
      )
  ],
);
