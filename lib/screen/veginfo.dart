import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Veginfo extends StatelessWidget {
  const Veginfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/product/Vegetables/romaine-lettuce.jpg'),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.deepPurple[100],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Romaine Lettuce',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1.10€/kg",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '~ 150 gr / piece',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: Colors.teal),
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
                    Text(
                      'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf '
                      'vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, '
                      'although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can '
                      'also be grilled.',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    SizedBox(
                      height: 56,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 56,
                          width: 78,
                          child: Icon(CupertinoIcons.heart),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 56,
                          width: 275,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.cart),
                              SizedBox(
                                width: 10,
                              ),
                              Text('ADD TO CART'),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
