import 'package:food_delivery_app/model/vegname_model.dart';
import 'package:food_delivery_app/screen/veginfo.dart';
import 'package:food_delivery_app/widget/filter_chip_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  List<bool> isFavorite =
      List<bool>.generate(vegetable.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f5f5),
      appBar: AppBar(
        backgroundColor: const Color(0xfff6f5f5),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(CupertinoIcons.back, color: Color(0xff2D0C57)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Vegetables',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xff2D0C57),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                prefixIcon: const Icon(Icons.search, color: Color(0xffA1A1A1)),
                hintText: 'Search vegetables...',
                hintStyle: const TextStyle(color: Color(0xffA1A1A1)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: const BorderSide(color: Color(0xffD9D0E3)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: const BorderSide(color: Color(0xff2D0C57)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FilterChipWidget(),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: vegetable.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = vegetable[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const Veginfo(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                item.image,
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xff2D0C57),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '${item.price} ${item.amount}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff9586A8),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              isFavorite[index] =
                                                  !isFavorite[index];
                                            });
                                            Get.snackbar(
                                              '',
                                              '',
                                              padding: const EdgeInsets.only(
                                                  top: 25),
                                              titleText: Text(
                                                isFavorite[index]
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Icon(
                                            isFavorite[index]
                                                ? CupertinoIcons.heart_fill
                                                : CupertinoIcons.heart,
                                            color: isFavorite[index]
                                                ? Colors.red
                                                : const Color(0xff9586A8),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Get.snackbar(
                                              '',
                                              '',
                                              padding: const EdgeInsets.only(
                                                  top: 25),
                                              titleText: const Text(
                                                'Added to Cart',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff0BCE83),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Icon(
                                            CupertinoIcons.cart,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
