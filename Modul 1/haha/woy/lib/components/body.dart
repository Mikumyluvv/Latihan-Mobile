import 'package:flutter/material.dart';
import 'package:woy/components/header_with_searchbox.dart';
import 'package:woy/constants.dart';
// import 'package:woy/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Row(
            children: <Widget>[
              TitleWithCustomUnderline(text: "Recommended"),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: kPrimaryColor,
                onPressed: () {},
                child: Text("More", style: TextStyl(Color: Colors.white)),)
              
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
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
                margin: EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
