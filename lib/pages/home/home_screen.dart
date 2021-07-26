import 'package:flutter/material.dart';
import 'package:headphone/pages/home/components/bottom.dart';
import 'package:headphone/pages/home/components/category.dart';
import 'package:headphone/pages/home/components/headphone_banner.dart';

import '../../constants.dart';
import 'components/product.dart';
import 'components/productitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: backgroundWhite,
              elevation: 0,
              leading: Icon(Icons.grid_3x3, color: backgroundGrey, size: 36),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 36,
                      color: backgroundGrey,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.local_pizza,
                      size: 36,
                      color: backgroundGrey,
                    ))
              ],
            ),
            body: Stack(
              children: [
                Container(
                  color: backgroundGrey,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: backgroundWhite,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(75))),
                  child: Column(  
                    children: [
                      HaedphoneBanner(),
                      SizedBox(height: 20),
                      ProductsTitle(),
                      SizedBox(height: 10),
                      Category(),
                      SizedBox(height: 30),
                      Products(),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
        Container(
          height: 200.0,
          child: Stack(  
            children: [
                Container(
                color: backgroundWhite,
              ),
               Container(
                decoration: BoxDecoration(
                    color: backgroundGrey,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(75))),
                child: BottomPanel(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
