import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login up page'),
        ),
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                    child: Center(
                      child: Image.network('https://picsum.photos/250?image=9'),
                    ),
                  )
                ],
              ),
              const Center(
                  child: Text(
                "Login up page",
                style: TextStyle(fontSize: 24, color: Colors.pink),
              )),
              const SizedBox(
                height: 60,
                child: Center(
                  child: Text(
                    "Welcome to Flutter",
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(30)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 60,
                child: Center(
                  child: Text(
                    "Forgot password",
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.brown,
                ),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Dont have an account",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ), //AppBar
      ),
    );
  }
}
