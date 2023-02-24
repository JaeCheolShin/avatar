import 'package:avatar3_flutter/models/model_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabMyPage extends StatelessWidget {
  const TabMyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("My Page"),
          LoginOutButton(),
        ],
      ),
    );
  }
}

class LoginOutButton extends StatelessWidget {
  const LoginOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final authClient =
        Provider.of<FirebaseAuthProvider>(context, listen: false);
    return TextButton(
        onPressed: () async {
          await authClient.logout();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(content: Text('logout!')));
          Navigator.of(context).pushReplacementNamed('/login');
        },
        child: const Text('logout'));
  }
}
