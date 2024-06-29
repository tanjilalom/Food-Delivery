import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Veginfo extends StatelessWidget {
  const Veginfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/product/Vegetables/romaine-lettuce.jpg',
          ),
          Positioned(
            bottom: -600,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 615,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color(0xfff6f5f5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Romaine Lettuce',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '1.10',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Color(0xff2D0C57),
                          ),
                        ),
                        Text(
                          ' € / piece',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color(0xff9586a8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '~ 150 gr / piece',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xff0bce83),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Spain',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 194,
                      width: 373,
                      child: Text(
                        'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads,'
                        'although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can '
                        'also be grilled.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 56,
                          width: 78,
                          child: Icon(CupertinoIcons.heart,
                              color: Color(0xff9586a8)),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffD9D0E3),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 56,
                          width: 275,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.cart,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'ADD TO CART',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff0BCE83),
                              border: Border.all(
                                color: Color(0xffD9D0E3),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
