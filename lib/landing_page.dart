import 'package:crewin_test_pro/register_page_1.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.fromLTRB(10, 100, 10, 30),
          child: SizedBox(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              const FlutterLogo(
                size: 200,
              ),
              const Padding(padding: EdgeInsets.all(20.0)),
              const Text(
                'Text Pro',
                style: TextStyle(
                  color: Color.fromARGB(255, 94, 97, 99),
                  fontSize: 35,
                  fontFamily: 'Amaranth',
                ),
              ),
              const Padding(padding: EdgeInsets.all(15.0)),
              Text(
                'Text Pro ' * 33,
              ),
              const Padding(padding: EdgeInsets.all(15.0)),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 10),
                width: 500,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const registerPageOne()),
                    );
                  },
                  icon: const Icon(Icons.email),
                  label: const Text('Continue with e-mail '),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 10),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.mail),
                  label: const Text('Continue with google account'),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 10),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                  label: const Text('Continue with facebook account'),
                ),
              )
            ]),
          ))),
    );
  }
}
