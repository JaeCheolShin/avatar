import 'package:avatar3_flutter/models/model_auth.dart';
import 'package:avatar3_flutter/models/model_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class logintaara extends StatelessWidget {
  const logintaara({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => LoginModel(),
        child: Scaffold(
          resizeToAvoidBottomInset: false, //키보드 올라왔을대 overflow가 되지 않도록 하는 주석
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 140,
                  height: 140,
                ),
              ),
              const Text(
                'TAARA로 시작하기',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              const EmailInput(),
              const PasswordInput(),
              const SizedBox(
                height: 10,
              ),
              const LoginButton(),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  RegisterButton(),
                  Find_Id(),
                  Find_Password(),
                ],
              ),
            ],
          ),
        ));
  }
}

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final login = Provider.of<LoginModel>(context, listen: false);
    return Container(
      padding: const EdgeInsets.fromLTRB(85, 0, 85, 0),
      child: TextField(
        onChanged: (email) {
          login.setEmail(email);
        },
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          labelText: 'Email', // 아이디 입력창에 띄울 텍스트
          helperText: '', //id 아래 작은 글씨
          hintText: 'Enter your Email', //email을 누르면 나타나는 글씨
        ),
      ),
    );
  }
}

/*onTap: () {
        FocusManager.instance.primaryFocus?.unfocus(); // 키보드 닫기 이벤트 나중에 끼워 맞추기
      },*/

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final login = Provider.of<LoginModel>(context, listen: false);
    return Container(
      padding: const EdgeInsets.fromLTRB(85, 0, 85, 0),
      child: TextField(
        onChanged: (password) {
          login.setPassword(password);
        },
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Password', // 비밀번호 입력창에 띄울 텍스트
          helperText: '', //password 아래 작은 글씨
          hintText: 'Enter your Password', //password를 누르면 나타나는 글씨
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final authClient =
        Provider.of<FirebaseAuthProvider>(context, listen: false);
    final login = Provider.of<LoginModel>(context, listen: false);

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            backgroundColor: Colors.black,
            side: const BorderSide(color: Colors.transparent)),
        onPressed: () async {
          await authClient
              .loginWithEmail(login.email, login.password)
              .then((loginStatus) {
            if (loginStatus == AuthStatus.loginSuccess) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text('welcome! ${authClient.user!.email!} ')));
              Navigator.pushReplacementNamed(context, '/index');
            } else {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(const SnackBar(content: Text('login fail')));
            }
          });
        },
        child: const Text(
          '로그인',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/register');
        },
        child: const Text(
          '회원가입',
          style: TextStyle(color: Colors.black),
        ));
  }
}

class Find_Id extends StatelessWidget {
  const Find_Id({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/register');
        },
        child: const Text(
          'ID 찾기',
          style: TextStyle(color: Colors.black),
        ));
  }
}

class Find_Password extends StatelessWidget {
  const Find_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/register');
        },
        child: const Text(
          'Password 찾기',
          style: TextStyle(color: Colors.black),
        ));
  }
}
