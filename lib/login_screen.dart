import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [cajapurpura(size),iconopersona(),loginform(context)],
        ),
      ),
    );
  }

  Column loginform(BuildContext context) {
    return Column(
            children: [
              const SizedBox(height: 250),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(0,5),
                    )
                  ]),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline4),
                    const SizedBox(height: 30),
                    Container(
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              autocorrect: false,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: 
                                    BorderSide(color: Colors.deepPurple)),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.deepPurple,width: 2)),
                                hintText: 'exemplo@gmail.com',
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.alternate_email_rounded),
                              ),
                            ),
                            const SizedBox(height: 30),
                            TextFormField(
                              autocorrect: false,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: 
                                    BorderSide(color: Colors.deepPurple)),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.deepPurple,width: 2)),
                                hintText: '******',
                                labelText: 'Senha',
                                prefixIcon: Icon(Icons.lock_outline),
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),

                      ),
                    )
                  ],
                )),
              const SizedBox(height: 50),
              const Text("Registre-se",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
            ],
          );
  }

SafeArea iconopersona() {
  return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }

Container cajapurpura(Size size) {
  return Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(90, 70, 178, 1),    
      ])),
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(child: burbuja(),top: 90,left: 30),
          Positioned(child: burbuja(),top: -40,left: -30),
          Positioned(child: burbuja(),top: -50,left: -20),
          Positioned(child: burbuja(),bottom: -50,left: 10),
          Positioned(child: burbuja(),bottom: 120,left: 20),
        ]
      ),
    );
  }

Container burbuja() {
  return Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromRGBO(255, 255, 255, 0.05)),
          );
}
}
