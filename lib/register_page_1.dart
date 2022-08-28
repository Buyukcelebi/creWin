import 'package:crewin_test_pro/register_page_2.dart';
import 'package:flutter/material.dart';

class registerPageOne extends StatefulWidget {
  const registerPageOne({Key? key}) : super(key: key);

  @override
  State<registerPageOne> createState() => _registerPageOneState();
}

class _registerPageOneState extends State<registerPageOne> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 84, 79, 79),
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
                bottom: TabBar(
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.black,
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(15), // Creates border
                        color: Colors.white),
                    tabs: const [
                      Tab(text: 'Sing up'),
                      Tab(text: 'Sing in'),
                    ])),
            body: TabBarView(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 80, 20, 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(7, 5, 0, 5),
                        child: Text(
                          'E-mail',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 144, 129, 129)),
                        decoration: InputDecoration(
                          filled: false,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(7, 40, 0, 5),
                        child: Text(
                          'Create Password',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextField(
                        maxLength: 20,
                        obscureText: true,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Colors.black,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 144, 129, 129)),
                        decoration: InputDecoration(
                          filled: false,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(7, 20, 0, 5),
                        child: Text(
                          'Re-write Password',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextField(
                        maxLength: 20,
                        obscureText: true,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Colors.black,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 144, 129, 129)),
                        decoration: InputDecoration(
                          filled: false,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 80),
                          width: 400,
                          height: 130,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 84, 79, 79)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const registerPageTwo()),
                                );
                              },
                              child: const Text('Continue')))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 80, 20, 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(7, 5, 0, 5),
                        child: Text(
                          'E-mail',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        cursorColor: Colors.black,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 144, 129, 129)),
                        decoration: InputDecoration(
                          filled: false,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(7, 40, 0, 5),
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      TextField(
                        maxLength: 20,
                        obscureText: true,
                        keyboardType: TextInputType.multiline,
                        cursorColor: Colors.black,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 144, 129, 129)),
                        decoration: InputDecoration(
                          filled: false,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Forgot Password')),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 157),
                        width: 400,
                        height: 207,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 84, 79, 79)),
                            onPressed: () {},
                            child: const Text('Continue')),
                      )
                    ]),
              ),
            ])));
  }

  ElevatedButton eleButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 84, 79, 79)),
        onPressed: () {},
        child: const Text('Continue'));
  }
}
