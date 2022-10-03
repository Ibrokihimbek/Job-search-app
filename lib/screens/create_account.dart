import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Create_account_page extends StatefulWidget {
  const Create_account_page({super.key});

  @override
  State<Create_account_page> createState() => _Create_account_pageState();
}

class _Create_account_pageState extends State<Create_account_page> {
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
                        'Create and account',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text('Sign Up to continue'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Full name',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w200),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Full name',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
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
                      onTap: () {},
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
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 78,
                        ),
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Sign In',
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
