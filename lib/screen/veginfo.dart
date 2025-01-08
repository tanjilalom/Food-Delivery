import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Veginfo extends StatefulWidget {
  const Veginfo({super.key});

  @override
  State<Veginfo> createState() => _VeginfoState();
}

class _VeginfoState extends State<Veginfo> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/product/Vegetables/romaine-lettuce.jpg',
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 281,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Color(0xfff6f5f5),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Romaine Lettuce',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color(0xff2D0C57),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Row(
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
                    const SizedBox(height: 20),
                    const Text(
                      '~ 150 gr / piece',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xff0bce83),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Origin: Spain',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color(0xff2D0C57),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps. It can also be grilled.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Color(0xff2D0C57),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 56,
                          width: 78,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isFavourite = !isFavourite;
                              });
                              Get.snackbar(
                                '',
                                '',
                                padding: const EdgeInsets.only(top: 25),
                                titleText: Text(
                                  isFavourite
                                      ? 'Removed from Favourite'
                                      : 'Added to Favourite',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(
                                color: Color(0xffD9D0E3),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(
                              isFavourite
                                  ? CupertinoIcons.heart_fill
                                  : CupertinoIcons.heart,
                              color: isFavourite
                                  ? Colors.red
                                  : const Color(0xff9586A8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Get.snackbar(
                              '',
                              '',
                              padding: const EdgeInsets.only(top: 25),
                              titleText: const Text(
                                'Added to Cart',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                color: const Color(0xff0BCE83),
                                border: Border.all(
                                  color: const Color(0xffD9D0E3),
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
