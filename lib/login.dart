import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  var userText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.tealAccent,
                Colors.cyan,
                Colors.indigo[400]!,
              ],
            ),
          ),
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(height: 15,),
                  showLogo(),
                  inputName(),
                  inputPassword(),
                  const SizedBox(height: 10,),
                  inputButton(),
                  const SizedBox(height: 10,),
                  registerButton(),
                  const SizedBox(height: 10,),
                  showTextLogin(),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [facebookButton(), googleButton()],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showLogo() {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 4,
          right: MediaQuery.of(context).size.width / 4),
      child: Image.asset(
        'images/flutter-logo.png',
      ),
    );
  }

  Widget inputName() {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
      child: TextFormField(
        controller: userText,
        validator: (val) {
          if (val!.isEmpty) {
            return '??????????????????????????????????????????????????????????????????';
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: Colors.white10.withOpacity(0.7),
          filled: true,
          hintText: 'username',
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.blueGrey,
            size: 35,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget inputPassword() {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: TextFormField(
        controller: passText,
        validator: (val) {
          if (val!.isEmpty) {
            return '???????????????????????????????????????????????????';
          }
          return null;
        },
        obscureText: true,
        decoration: InputDecoration(
          fillColor: Colors.white10.withOpacity(0.7),
          filled: true,
          hintText: 'password',
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.blueGrey,
            size: 35,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget inputButton() {
    return SizedBox(
      width: 320,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          if (formkey.currentState!.validate()) {
            SnackBar snackBar = const SnackBar(
              content: Text("????????????????????????????????????????????????????????????????????????"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.pink[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }

  Widget registerButton() {
    return SizedBox(
      width: 320,
      height: 50,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          '???????????????????????????',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }

  Widget showTextLogin() {
    return Text(
      '?????????????????????????????????????????????????????????????????????',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.orangeAccent[700]!,
      ),
    );
  }

  Widget facebookButton() {
    return MaterialButton(
      onPressed: () {},
      child: const SizedBox(
        width: 75,
        child: Image(
          image: AssetImage('images/facebook-logo.png'),
        ),
      ),
    );
  }

  Widget googleButton() {
    return MaterialButton(
      onPressed: () {},
      child: const SizedBox(
        width: 75,
        child: Image(
          image: AssetImage('images/google-logo.png'),
        ),
      ),
    );
  }
}
