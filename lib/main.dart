import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MufPortal());
}

class MufPortal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
//        appBar: AppBar(
//          title: Center(child: Text('MUF Portal')),
//          backgroundColor: Colors.blue[900],
//        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Image(
              image: AssetImage('images/login-logo-header2.png'),
              height: 110,
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Padding(
                padding: const EdgeInsets.all(0.1),
                child: ListTile(
                  leading: Icon(
                    Icons.face,
                    size: 30,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'NIK'),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Padding(
                  padding: const EdgeInsets.all(0.1),
                  child: ListTile(
                    leading: Icon(
                      Icons.vpn_key,
                      size: 30,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Password'),
                    ),
                    trailing: Icon(
                      Icons.visibility_off,
                      size: 25,
                    ),
                  )),
            ),
            Card(
              color: Colors.blue[900],
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Padding(
                padding: const EdgeInsets.all(0.1),
                child: FlatButton(
                  onPressed: (){
                    print('Login button got pressed');
                  },
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Lupa User ID / Password',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            SizedBox(
              height: 230,
            ),
            Container(
              child: Image.asset('images/login-logo-footer.png'),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Text(
                    'Mandiri Utama Finance terdaftar dan diawasi oleh Otoritas Jasa Keuangan',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset('images/ojk-logo.png'),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
