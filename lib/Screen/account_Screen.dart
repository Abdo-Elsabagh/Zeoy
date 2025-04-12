import 'package:flutter/material.dart';
import 'package:koey/auth/login_viem.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2e746a),
                    padding: const EdgeInsets.all(8),
                    minimumSize: const Size(200, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 102,
                        backgroundColor: Colors.black,
                      ),
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('asset/image/Zoey.jpg'),
                      ),
                    ],
                  ),
                  Text(
                    'Zeinab',
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2e746a),
                    padding: const EdgeInsets.all(8),
                    minimumSize: const Size(300, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2e746a),
                    padding: const EdgeInsets.all(8),
                    minimumSize: const Size(300, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Courses',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2e746a),
                    padding: const EdgeInsets.all(8),
                    minimumSize: const Size(350, 50),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (scontext) => const LoginView(),
                    ));
                  },
                  child: const Text(
                    'Log Out',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
