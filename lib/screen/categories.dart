import 'package:deliveryapp_ui/model/category_model.dart';
import 'package:deliveryapp_ui/screen/homescreen.dart';
import 'package:deliveryapp_ui/screen/vegetables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  Categories({super.key});


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
              'Categories',
              style: TextStyle(fontSize: 35),
            ),
            SearchBar(
              leading: Icon(Icons.search),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: category.length,
                itemBuilder: (BuildContext context, int index) {
                  var itemname = category[index];
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: ()=> Get.to(Vegetables()),
                      child: Container(
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple[100],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                // Image border
                                child: SizedBox.fromSize(
                                  child: Image.asset(
                                      itemname.image,
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text(itemname.name),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text(itemname.stock.toString()),
                            ),
                            SizedBox(
                              height: 10,
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
