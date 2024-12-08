import 'package:flutter/material.dart';
import 'package:koey/Screen/NavigationBar.dart';
import 'package:koey/auth/login_viem.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                    'Sing up',
                    style: TextStyle(fontSize: 30, color: Color(0xFF6f6f6f)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 600,
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
                          SizedBox(
                            height: 50,
                            width: 300,
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Frist Name'),
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                    child: TextField(
                                  decoration:
                                      InputDecoration(hintText: 'Last Name'),
                                ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 300,
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextFormField(
                                  decoration:
                                      const InputDecoration(hintText: '   Day'),
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                    child: TextField(
                                  decoration:
                                      InputDecoration(hintText: '  Month'),
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                    child: TextField(
                                  decoration:
                                      InputDecoration(hintText: '   Year'),
                                )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name must not be empty!';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                                const InputDecoration(hintText: 'Email'),
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
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (context) =>
                                        const NavigationScreen(),
                                  ));
                                }
                              },
                              child: const Text(
                                'Create',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginView(),
                                ));
                              },
                              child: const Text(
                                ' Already have an account !',
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
