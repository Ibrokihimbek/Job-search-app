import 'package:amaliyot/screens/create_account.dart';
import 'package:amaliyot/screens/forget.dart';
import 'package:amaliyot/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome_page extends StatefulWidget {
  const Welcome_page({super.key});

  @override
  State<Welcome_page> createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page> {
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
                height: 140,
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
                height: 696.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const ListTile(
                      title: Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text('Login to continue'),
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
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w200),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !isPas,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                setState(() {
                                  isPas = !isPas;
                                });
                              });
                            },
                            icon: isPas
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                          ),
                          hintText: 'password',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forget_page(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 250),
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                         Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home_page(),
                              ),
                            );
                      },
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
                              'Log In',
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(
                        'Or Connect with',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w200),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 16, 67, 126)),
                            width: 86,
                            height: 70,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                            width: 86,
                            height: 70,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[400]),
                            width: 86,
                            height: 70,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300]),
                            width: 86,
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 80,
                        ),
                        const Text(
                          'Dont have an account?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Create_account_page(),
                              ),
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
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
