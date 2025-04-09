import 'package:flutter/material.dart';
import 'package:koey/components/coures_add.dart';
import 'package:url_launcher/url_launcher.dart';

class HtmalNumber extends StatelessWidget {
  const HtmalNumber({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url1 = Uri.parse('https://youtu.be/6QAELgirvjs?si=qQ70TwZJ34Pi_rvH');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url1)) {
        throw Exception('Could not launch $_url1');
      }
    }

    final Uri _url2 = Uri.parse(
        'https://youtu.be/7LxA9qXUY5k?feature=shared');

    Future<void> _launchUr2() async {
      if (!await launchUrl(_url2)) {
        throw Exception('Could not launch $_url2');
      }
    }
 final Uri _url3 = Uri.parse(
        'https://youtu.be/QG5aEmS9Fu0');

    Future<void> _launchUr3() async {
      if (!await launchUrl(_url3)) {
        throw Exception('Could not launch $_url3');
      }
    }
final Uri _url4 = Uri.parse(
        'https://youtu.be/dVgTBEYCseU?feature=shared');

    Future<void> _launchUr4() async {
      if (!await launchUrl(_url4)) {
        throw Exception('Could not launch $_url4');
      }
    }
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Coures(
                name1: '1',
                name2: '2',
                name3: '3',
                name4: '4',
                onTop1: () {
                  _launchUrl();
                },
                onTop2: () {
                  _launchUr2();
                },
                onTop3: () { _launchUr3();},
                onTop4: () { _launchUr4();},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '5',
                name2: '6',
                name3: '7',
                name4: '8',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '9',
                name2: '10',
                name3: '11',
                name4: '12',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '13',
                name2: '14',
                name3: '15',
                name4: '16',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '17',
                name2: '18',
                name3: '19',
                name4: '20',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '21',
                name2: '22',
                name3: '23',
                name4: '24',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '25',
                name2: '26',
                name3: '27',
                name4: '28',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '29',
                name2: '30',
                name3: '31',
                name4: '32',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '33',
                name2: '34',
                name3: '35',
                name4: '36',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  alignment: Alignment.center,
                  child: const Text(
                    '37',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
