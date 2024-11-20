import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/screens/login_screen.dart';

class LoginAuth extends StatefulWidget {
  const LoginAuth({super.key});

  @override
  State<LoginAuth> createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  bool isLoggedIn = false;
  String loggedInUsername = '';

  void handleLogin(String username) {
    setState(() {
      isLoggedIn = true;
      loggedInUsername = username;
    });
  }

  void handleLogout() {
    setState(() {
      isLoggedIn = false;
      loggedInUsername = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoggedIn
        ? BottomNavScreen(
            loggedInUsername: loggedInUsername,
            onLogout: handleLogout, // Tambahkan fungsi logout
          )
        : LoginScreen(onLogin: handleLogin);
  }
}
