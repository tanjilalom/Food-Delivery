import 'package:deliveryapp_ui/model/vegname_model.dart';
import 'package:deliveryapp_ui/screen/veginfo.dart';
import 'package:deliveryapp_ui/widget/filter_chip_widget.dart';
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
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
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
            ),
            SearchBar(
              leading: Icon(Icons.search),
            ),
            SizedBox(
              height: 30,
            ),
            FilterChipWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: vegetable.length,
                itemBuilder: (BuildContext context, int index) {
                  var itemname = vegetable[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 160,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => Get.to(Veginfo()),
                            child: ClipRRect(
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
                                Text(
                                  itemname.price,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                    color: Color(0xff2D0C57),
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
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
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 78,
                                        child: Icon(CupertinoIcons.cart, color: Colors.white,),
                                        decoration: BoxDecoration(
                                            color: Color(0xff0BCE83),
                                            border: Border.all(
                                              color: Color(0xffD9D0E3),
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
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
