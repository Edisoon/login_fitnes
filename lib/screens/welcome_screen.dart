import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_fitnes/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xffB81736),
            Color(0xff2A1630),
          ],
        )),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 250),
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Bienvenido de Nuevo!',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context)=>const LoginScreen(),),);
              },
              child: Container(
                height: 55,
                width: 400,
                // color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 55,
              width: 400,
              // color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(color: Colors.white),
              ),
              child: const Center(
                child: Text(
                  'Registrate',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 105, 13, 32)),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Inicia sesión con una red social',
              style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: Image(
                image: AssetImage('assets/social.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
