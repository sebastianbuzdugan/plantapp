import 'package:flutter/material.dart';

import '../../../constraints.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(  
                      child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                      ),
                  onPressed: () {},
                   style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  primary: kPrimaryColor,
                
                   ),
                  
                ),
              ),
              SizedBox(
                 width: size.width / 2,
                height: 84, 
                child: ElevatedButton(
                  onPressed: () {},
                  
                    child: Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    ),
                     style: ElevatedButton.styleFrom(
                       primary: kBackgroundColor,
                      
                     ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}