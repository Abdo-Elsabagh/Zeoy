import 'package:flutter/material.dart';
import 'package:koey/components/coures_add.dart';
import 'package:url_launcher/url_launcher.dart';

class CssNumber extends StatelessWidget {
  const CssNumber({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url1 = Uri.parse('https://youtu.be/X1ulCwyhCVM?feature=shared');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url1)) {
        throw Exception('Could not launch $_url1');
      }
    }

    final Uri _url2 = Uri.parse('https://youtu.be/89VLfs-wpEY?feature=shared');

    Future<void> _launchUr2() async {
      if (!await launchUrl(_url2)) {
        throw Exception('Could not launch $_url2');
      }
    }

    final Uri _url3 = Uri.parse('https://youtu.be/66sjwQ-hB64?feature=shared');

    Future<void> _launchUr3() async {
      if (!await launchUrl(_url3)) {
        throw Exception('Could not launch $_url3');
      }
    }

    final Uri _url4 = Uri.parse('https://youtu.be/xkNpIsbxMuo?feature=shared');

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
                onTop3: () {
                  _launchUr3();
                },
                onTop4: () {
                  _launchUr4();
                },
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
              Coures(
                name1: '37',
                name2: '38',
                name3: '39',
                name4: '40',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '41',
                name2: '42',
                name3: '43',
                name4: '44',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '45',
                name2: '46',
                name3: '47',
                name4: '48',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '49',
                name2: '50',
                name3: '51',
                name4: '52',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '53',
                name2: '54',
                name3: '55',
                name4: '56',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '57',
                name2: '58',
                name3: '59',
                name4: '60',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '61',
                name2: '62',
                name3: '63',
                name4: '64',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '65',
                name2: '66',
                name3: '67',
                name4: '68',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '69',
                name2: '70',
                name3: '71',
                name4: '72',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '73',
                name2: '74',
                name3: '75',
                name4: '76',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '77',
                name2: '78',
                name3: '79',
                name4: '80',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '81',
                name2: '82',
                name3: '83',
                name4: '84',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Coures(
                name1: '85',
                name2: '86',
                name3: '87',
                name4: '88',
                onTop1: () {},
                onTop2: () {},
                onTop3: () {},
                onTop4: () {},
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
