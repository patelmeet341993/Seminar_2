import 'package:flutter/material.dart';

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {

  List<String> mydata=[];

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
        myBtn("Button",(){

          mydata.add("aaa");
          setState(() {});

        }),
        Expanded(child: ListView.builder(

            itemCount: mydata.length,
            itemBuilder: (ctx, index) {

          return Text("Index : $index");
        }))
      ],
    );
  }

  Widget myBtn(String title,Function onTapFun) {
    return InkWell(
      onTap: (){
        onTapFun();
      },
      child: Container(
        margin: EdgeInsets.only(right: 5, left: 5, top: 30),
        color: Colors.blue,
        padding: EdgeInsets.all(10),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}
