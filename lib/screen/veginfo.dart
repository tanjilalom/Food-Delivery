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
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Romaine Lettuce',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1.10€/kg",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '~ 150 gr / piece',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.teal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Spain',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf '
                      'vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, '
                      'although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can '
                      'also be grilled.',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
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
                            height: 50,
                            width: 250,
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
