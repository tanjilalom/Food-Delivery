import 'package:food_delivery_app/model/vegname_model.dart';
import 'package:food_delivery_app/screen/veginfo.dart';
import 'package:food_delivery_app/widget/filter_chip_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vegetables extends StatefulWidget {
  Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xfff6f5f5),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vegetables',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xff2D0C57),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FilterChipWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: vegetable.length,
                itemBuilder: (BuildContext context, int index) {
                  var itemname = vegetable[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => Veginfo()));
                      },
                      //() => Get.to(Veginfo()),
                      child: Container(
                        height: 160,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: SizedBox.fromSize(
                                child: Image.asset(
                                  itemname.image,
                                  fit: BoxFit.cover,
                                  height: 128,
                                  width: 177,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 16,
                                left: 12.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    itemname.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xff2D0C57),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        itemname.price,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22,
                                          color: Color(0xff2D0C57),
                                        ),
                                      ),
                                      Text(
                                        itemname.amount,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Color(0xff9586a8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () => Get.snackbar(
                                            '',
                                            '',
                                            padding: EdgeInsets.only(top: 25),
                                            titleText: Text(
                                                'Added to Favourite',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.center),
                                          ),
                                          child: Container(
                                            height: 40,
                                            width: 78,
                                            child: Icon(
                                              CupertinoIcons.heart,
                                              color: Color(0xff9586a8),
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xffD9D0E3),
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          onTap: () => Get.snackbar(
                                            '',
                                            '',
                                            padding: EdgeInsets.only(top: 25),
                                            titleText: Text('Added to Cart',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.center),
                                          ),
                                          child: Container(
                                            height: 40,
                                            width: 78,
                                            child: Icon(
                                              CupertinoIcons.cart,
                                              color: Colors.white,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color(0xff0BCE83),
                                                border: Border.all(
                                                  color: Color(0xffD9D0E3),
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
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
