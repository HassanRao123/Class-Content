import 'package:alphabetcardsapp/play.dart';
import 'package:flutter/material.dart';
import 'contact.dart';
import 'play1.dart';
void main() => runApp(const MaterialApp(
      home: alphabet(),
    ));

class alphabet extends StatefulWidget {
  const alphabet({Key? key}) : super(key: key);

  @override
  _alphabetState createState() => _alphabetState();
}

class _alphabetState extends State<alphabet> {
  @override
  Widget draz() {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: ClipRRect(
                        child: Image(
                          image: AssetImage('images/alpha1.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Contact Us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => contactus()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alphabet Cards Game"),
        ),
        drawer: draz(),
        body: Center(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(padding: EdgeInsets.all(50)),
                 Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: const Text(
                      'A-Z',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuizPage()),
                      );
                    },
                  ),
                ),
              
                
                 Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    color: Colors.blue,
                    child: const Text(
                      'a-z',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Quiz()),
                      );
                    },
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
