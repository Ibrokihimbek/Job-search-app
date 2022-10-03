import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Forget_page extends StatefulWidget {
  const Forget_page({super.key});

  @override
  State<Forget_page> createState() => _Forget_pageState();
}

class _Forget_pageState extends State<Forget_page> {
  bool isPas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 7, 156),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 450,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                height: 390,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const ListTile(
                      title: Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      subtitle:
                          Text('Enter your email to recover your password'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Email adress',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w200),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Email',
                            suffixIcon: const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 67, 7, 156),
                          ),
                          width: 400,
                          height: 50,
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
