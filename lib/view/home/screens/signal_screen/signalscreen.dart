import 'package:flutter/material.dart';
import 'package:marketfeed_clone/globalwidget/topcontainer.dart';
import 'package:marketfeed_clone/utils/colorconstant.dart';
import 'package:marketfeed_clone/utils/imageconstant.dart';

class SignalScreen extends StatefulWidget {
  const SignalScreen({super.key});

  @override
  State<SignalScreen> createState() => _SignalScreenState();
}

class _SignalScreenState extends State<SignalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.bgclr,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: ColorConst.appbariconcolor,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.volume_up_sharp,
                  color: ColorConst.appbariconcolor,
                ))
          ],
          centerTitle: true,
          title: ImageConstant.appbarlogo,
          backgroundColor: ColorConst.appbarcolor),
      body: ListView(
        children: [
          TopContainer(),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1000,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80, top: 15),
                  child: Text(
                    'Fastest Market Updates!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Chart patterns, market analysis, result announcements & more. Available during market hours only.',
                    style: TextStyle(color: Colors.grey.shade900),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Icon(
                  Icons.receipt_sharp,
                  size: 100,
                ),
                Text(
                  'No updates',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
