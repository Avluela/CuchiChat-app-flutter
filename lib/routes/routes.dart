import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../pages/register_page.dart';
import '../pages/user_page.dart';
import '../pages/chat_page.dart';
import '../pages/loading_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'user': (_) => const UserPage(),
  'chat': (_) => const ChatPage(),
  'login': (_) => const LoginPage(),
  'register': (_) => const RegisterPage(),
  'loading': (_) => const LoadingPage(),
};
