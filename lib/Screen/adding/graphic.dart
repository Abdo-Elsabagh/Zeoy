import 'package:flutter/material.dart';
import 'package:koey/Screen/add%202/photo_Shop.dart';
import 'package:koey/components/categories_add2.dart';
import 'package:url_launcher/url_launcher.dart';

class GraphicCategories extends StatelessWidget {
  const GraphicCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(
        'https://www.youtube.com/playlist?list=PLrmCLtyHNeXgfj73-EzhZD5dJhD6fZXEA');

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    final Uri _url2 = Uri.parse(
        'https://www.youtube.com/playlist?list=PLrmCLtyHNeXjlag2T8_eTKYwg_gP3CIup');

    Future<void> _launchUr() async {
      if (!await launchUrl(_url2)) {
        throw Exception('Could not launch $_url2');
      }
    }

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
                    minimumSize: const Size(300, 50),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Graphic design',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  )),
              const SizedBox(
                height: 20,
              ),
              Adding2(
                image: 'asset/image/photoshop.png',
                name: 'Photo Shop',
                onTop: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (scontext) => const PhotoShop2(),
                  ));
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Adding2(
                image: 'asset/image/illstritor.png',
                name: 'illustrator',
                onTop: () {
                  _launchUrl();
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Adding2(
                image: 'asset/image/indesien.png',
                name: 'Indesien',
                onTop: () {
                  _launchUr();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
