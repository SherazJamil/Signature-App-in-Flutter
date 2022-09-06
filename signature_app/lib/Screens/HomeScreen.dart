import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'dart:typed_data';
import 'Drawer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Uint8List? eImage;

  SignatureController controller = SignatureController(
    penStrokeWidth: 3,
    penColor: Colors.black,
    exportBackgroundColor: Colors.deepOrangeAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: navigationMenufunction(context),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF6607),
        title: const Text(
          'Signature Pad',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Logo.png'))
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Signature(
            controller: controller,
            height: 250,
            width: 700,
            backgroundColor: Colors.deepOrangeAccent,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () async {
                  eImage = await controller.toPngBytes();
                  setState(() {});
                },
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  controller.clear();
                },
                child: const Text('Clear',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          if (eImage != null)
            Image.memory(
              eImage!,
              width: MediaQuery.of(context).size.width / 1.05,
              height: 300,
            ),
          if (eImage != null)
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                eImage = null;
                setState(() {});
              },
              child: const Text('Clear',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
        ],
      ),
    );
  }
}
