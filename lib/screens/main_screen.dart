import 'package:flutter/material.dart';
import 'package:hello_world/widgets/body.dart';
import 'package:hello_world/widgets/contact_button.dart';

class Portfalio extends StatelessWidget {
  const Portfalio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                    'data:image/png;base64,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'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Irfan Portfalio',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact Me',
            icon: Icon(Icons.send_sharp),
            onPressed: () => print('Hello sent'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Body(),
        ],
      ),
    );
  }
}

