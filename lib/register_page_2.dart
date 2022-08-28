import 'package:flutter/material.dart';

class registerPageTwo extends StatelessWidget {
  const registerPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 79, 79),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 200, 10, 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(style: TextStyle(fontSize: 40), 'Your Name?'),
          TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(color: Color.fromARGB(255, 94, 97, 99)),
                hintText: 'Name'),
          ),
          Container(
            padding: const EdgeInsets.only(top: 265),
            width: 400,
            height: 315,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 84, 79, 79)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const registerPageTwo()),
                  );
                },
                child: const Text('Continue')),
          )
        ]),
      ),
    );
  }
}
