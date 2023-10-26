import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:woy/components/body.dart';

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: NewWidget(),
      body: Body(),
      );
  }
}

// class NewWidget extends StatelessWidget {
//   const NewWidget({
//     super.key,
//   });

  // @override
  AppBar NewWidget() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets\icon\icons8-menu-150.svg"),
        onPressed: (){},),
      );
  }
