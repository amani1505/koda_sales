import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../presentation/screens/main_screen.dart';
import '../presentation/screens/dashboard/dashboard_screen.dart';
import '../presentation/screens/customers/customer_list_screen.dart';
import '../presentation/screens/customers/customer_detail_screen.dart';
import '../presentation/screens/categories/category_list_screen.dart';
import '../presentation/screens/messages/message_list_screen.dart';
import '../presentation/screens/messages/send_message_screen.dart';
import '../presentation/screens/messages/chat_screen.dart';
import '../presentation/screens/auth/splash_screen.dart';
import '../presentation/screens/auth/onboarding_screen.dart';
import '../presentation/screens/auth/login_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      // Auth routes
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return MainScreen(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            name: 'dashboard',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const DashboardScreen(),
            ),
          ),
          GoRoute(
            path: '/customers',
            name: 'customers',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const CustomerListScreen(),
            ),
            routes: [
              GoRoute(
                path: ':id',
                name: 'customer-detail',
                builder: (context, state) {
                  final id = int.parse(state.pathParameters['id']!);
                  return CustomerDetailScreen(customerId: id);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/categories',
            name: 'categories',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const CategoryListScreen(),
            ),
          ),
          GoRoute(
            path: '/messages',
            name: 'messages',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const MessageListScreen(),
            ),
            routes: [
              GoRoute(
                path: 'send',
                name: 'send-message',
                builder: (context, state) => const SendMessageScreen(),
              ),
              GoRoute(
                path: 'chat/:customerId',
                name: 'chat',
                builder: (context, state) {
                  final customerId = int.parse(state.pathParameters['customerId']!);
                  return ChatScreen(customerId: customerId);
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
