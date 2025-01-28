import 'package:flutter/material.dart';
import 'package:hebah_project/controller/random_img_controller.dart';
import 'package:provider/provider.dart';

class RandomImg extends StatefulWidget {
  const RandomImg({super.key});

  @override
  State<RandomImg> createState() => _RandomImgState();
}

class _RandomImgState extends State<RandomImg> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final imgScreen = context.watch<RandomImgController>().myImg;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Random Image',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: height * 0.5,
              width: width,
              child: Image.network(
                "${imgScreen[index]}",
                fit: BoxFit.fill,
              ),
            );
          },
          itemCount: imgScreen.length,
        ),
      ),
    );
  }
}
