import 'package:flutter/material.dart';
import 'package:flutter_application_1/constraints.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

final String title;
final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
              ), 
            onPressed: press,
            child: Text("More",
            style: TextStyle(
              color: Colors.white,
            )),
            ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding/4),
            child: Text(
          text, 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

          ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
          child: Container(
            margin: EdgeInsets.only(right: kDefaultPadding/4),
            height: 7, 
            color: kPrimaryColor.withOpacity(0.2),
          ),
          ),
          ],
      
      )
    );
  }
}

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      height: size.height * 0.2,
    child: Stack(
      children: <Widget>[
Container(
  padding: EdgeInsets.only(
    left: kDefaultPadding, 
    right: kDefaultPadding,
    bottom: 36 + kDefaultPadding,),

  height: size.height * 0.2 - 27,
  decoration: BoxDecoration(color: kPrimaryColor,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(36),
    bottomRight: Radius.circular(36),

  ),
  ),
  child: Row(children: <Widget>[
    Text(
    'Hi Licenta',
    style: Theme.of(context).textTheme.headline5.copyWith(
    color: Colors.white, 
    fontWeight: FontWeight.bold,
    ),
    ),
  Spacer(),
  Image.asset("assets/images/logo.png"),
  ],
  )
),
Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
          

child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      // surffix isn't working properly  with SVG
                      // thats why we use row
                      // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/search.svg"),
              ],
            ),
          ),
),


     ],

    ),
            );
  }
}