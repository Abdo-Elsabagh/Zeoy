import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var formKey = GlobalKey<FormState>();
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd5e7e4),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 30, color: Color(0xFF6f6f6f)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color(0xff2e746a), width: 3)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name must not be empty!';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                                const InputDecoration(hintText: 'User Name'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                              validator: (value) {
                                if (value!.isEmpty || value.length < 8) {
                                  return 'Password must not be empty OR \nPassword must not length 8 ';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: isVisable,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isVisable = !isVisable;
                                      });
                                    },
                                    icon: Icon((isVisable)
                                        ? Icons.remove_red_eye
                                        : Icons.visibility_off_rounded)),
                                hintText: ('Password'),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2e746a),
                                padding: const EdgeInsets.all(8),
                                minimumSize: const Size(200, 50),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Log in',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Create an account !',
                                style: TextStyle(
                                    color: Color(0xff6f6f6f), fontSize: 20),
                              )),
                          const Divider(
                            color: Color(0xFF2e746a),
                            thickness: 4,
                            indent: 60,
                            endIndent: 60,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        )),
      ),
    );
  }
}
