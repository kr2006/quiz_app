import 'package:flutter/material.dart';
import 'package:poll_app/Pages/Home_page.dart';

class Authorization extends StatefulWidget {
  Authorization({Key? key}) : super(key: key);

  @override
  AuthorizationState createState() => AuthorizationState();
}

class AuthorizationState extends State<Authorization> {
  String _user = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade50,
        appBar: AppBar(
          title: Text('Quiz'),
          centerTitle: true,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                child: TextField(
                  onChanged: (String value) {
                    _user = value;
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
                onPressed: () {
                  if (_user != '') {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(
                                  userName: _user,
                                )));
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Warning!'),
                        content: const Text('You cannot leave the empty field'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text('Next'))
          ],
        ));
  }
}
