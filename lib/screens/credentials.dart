import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:moments/resources/colors.dart';
import 'package:moments/screens/home.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'zubairnaeem031@gmail.com': '123456',
};

class Credentials extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);
  const Credentials({Key? key}) : super(key: key);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }
  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return "null";
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'MOMENTS',
      theme: LoginTheme(

        //providerButtonPadding: EdgeInsets.all( 25),
        pageColorDark: AppColors().gradiant1,
        pageColorLight: AppColors().gradiant2,
        errorColor: Colors.red,
        accentColor: AppColors().textColor,
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        primaryColor: AppColors().textColor,
        inputTheme: InputDecorationTheme(
          filled: true,
          iconColor: AppColors().primaryColor,
          prefixIconColor: AppColors().primaryColor,
          prefixStyle: TextStyle(fontSize: 32),
          suffixIconColor: AppColors().primaryColor,
          suffixStyle: TextStyle(fontSize: 32)
        ),
        buttonTheme: LoginButtonTheme(

        ),
      ),
      logo: AssetImage('assets/credential_icon.png'),
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(title: '',),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
