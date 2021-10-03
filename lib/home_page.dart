import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/mydata.dart';
import 'package:provider_app/profile_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url =
      "https://www.pinkvilla.com/files/styles/app-section/public/harry_styles__1.jpeg?itok=J1kHYajJ";
  String url1 =
      "https://www.pinkvilla.com/files/styles/app-section/public/aryan_khan_drugs_case_main.jpg?itok=VRA9P0zj";
  String url2 =
      "https://www.pinkvilla.com/files/styles/app-section/public/jennifer_lawrence_amy_schumer.jpeg?itok=lvxd7H-Z";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _getBody(),
    ));
  }

  Widget _getBody() {
    return Column(
      children: [
        ProfileWidget(),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            myBtn("AAA", () {
              Provider.of<MyData>(context, listen: false).setName("AAA");
            }),
            myBtn("BBB", () {
              Provider.of<MyData>(context, listen: false).setName("BBB");
            }),
            myBtn("CCC", () {
              Provider.of<MyData>(context, listen: false).setName("CCC");
            }),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            myBtn("Img1", () {
              Provider.of<MyData>(context, listen: false).setImage(url);
            }),
            myBtn("Img2", () {
              Provider.of<MyData>(context, listen: false).setImage(url1);
            }),
            myBtn("Img3", () {
              Provider.of<MyData>(context, listen: false).setImage(url2);
            }),
          ],
        )
      ],
    );
  }

  Widget myBtn(String title, Function onTapFun) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTapFun();
        },
        child: Container(
          margin: EdgeInsets.only(right: 5, left: 5),
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white, fontSize: 25),
          )),
        ),
      ),
    );
  }
}
