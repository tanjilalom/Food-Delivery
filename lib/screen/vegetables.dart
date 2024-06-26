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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vegetables',
              style: TextStyle(fontSize: 35),
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
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: InkWell(
                      onTap: () => Get.to(Veginfo()),
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 150,
                        //color: Colors.purple[100],
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //color: Colors.deepPurple
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20), // Image border
                                child: SizedBox.fromSize(
                                  child: Image.asset('assets/romaine-lettuce.jpg', fit: BoxFit.cover),
                                ),
                              ),
                              /*child: Container(
                                child: Image.asset('assets/romaine-lettuce.jpg'),
                                //child: Image.asset('assets/romaine-lettuce.jpg'),
                                //width: MediaQuery.sizeOf(context).width/3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.deepPurple,
                                ),
                              ),*/
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Boston Lettuce',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                  Text("1.10/piece",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18)),
                                  Row(
                                    children: [
                                      Container(
                                        height: 45,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: 45,
                                              width: 65,
                                              child: Icon(CupertinoIcons.heart),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Container(
                                              height: 45,
                                              width: 65,
                                              child: Icon(CupertinoIcons.cart),
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
