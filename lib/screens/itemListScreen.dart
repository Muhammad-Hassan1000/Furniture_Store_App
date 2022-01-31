import 'package:furniture_store_app/models/ItemModel.dart';
//import 'package:furniture_store_app/screens/arViewScreen.dart';
import 'package:flutter/material.dart';

class ItemListScreen extends StatelessWidget {
  static const routeName = '/ItemListScreen';
  List<ItemModel> assets = [
    ItemModel(
      'Double Bed',
      'Double Bed with 2 Lamps',
      'assets/bed.png',
      12,
    ),
    ItemModel(
      'Single Sofa T55',
      'White Sofa for your Home',
      'assets/sofa_white.png',
      16,
    ),
    ItemModel(
      'Double Sofa',
      'Three seater branded sofa',
      'assets/sofa_yellow.png',
      10,
    ),
    ItemModel(
      'Chair Brown',
      'A small chair for your Backyard',
      'assets/pc_table.png',
      6,
    ),
    ItemModel(
      'G78 Single Sofa',
      'Branded single yellow sofa',
      'assets/single_sofa.png',
      10,
    ),
    ItemModel(
      'Dinner Table',
      'Beautiful dinner table for family',
      'assets/dinner_table.png',
      11,
    ),
    ItemModel(
      'Branded PC Table',
      'PC Table for your Computer',
      'assets/pc_table2.png',
      16,
    ),
    ItemModel(
      'Chair Short',
      'A small cheap chair',
      'assets/chair2.png',
      11,
    ),
    ItemModel(
      'Wooden Table',
      'Wooden branded UK table',
      'assets/table.png',
      16,
    ),
    ItemModel(
      'Single Sofa T55',
      'White Sofa for your Home',
      'assets/bed_double.png',
      16,
    ),
    ItemModel(
      'Single Sofa T55',
      'White Sofa for your Home',
      'assets/rot_chair.png',
      16,
    ),
    ItemModel(
      'Single Sofa T55',
      'White Sofa for your Home',
      'assets/sofa_uk.png',
      16,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'AR',
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  Text(
                    'Furniture',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    'App',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => ARViewScreen(
                          //       itemImg: assets[index].pic,
                          //     ),
                          //   ),
                          // );
                        },
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                "${assets[index].pic}",
                                width: 60,
                              ),
                            ),
                            Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      assets[index].name,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    Text(
                                      assets[index].detail,
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black87),
                                    ),
                                  ],
                                )),
                            Container(
                              width: 60,
                              child: Text(
                                assets[index].price.toString(),
                                style:
                                TextStyle(fontSize: 14, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: assets.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}