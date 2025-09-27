import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('New Trend'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 130,
                width: 200,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: 0,
                    offset: const Offset(10, 10),
                  )
                ]),
                child: const Card(
                  elevation: 10,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Handbag LV',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              r'$255',
                              style: TextStyle(fontSize: 16),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 32,
                top: -65,
                child: Image.network(
                  'https://img.pikbest.com/backgrounds/20190829/simple-sound-black-background-image_2840079.jpg!w700wp',
                  height: 100,
                ),
              ),
            ],
          ),
        ));
  }
}
