import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/mydata.dart';
class ProfileWidget extends StatelessWidget
{

  late MyData myData;

  @override
  Widget build(BuildContext context) {

    myData=Provider.of<MyData>(context,listen: true);

    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Image.network(myData.img),
        Text(
          myData.name,
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
