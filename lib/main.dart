import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MUF Portal',
    home: MufPortal(),
  ));
}

// Login Page
class MufPortal extends StatefulWidget {
  @override
  _MufPortalState createState() => _MufPortalState();
}

class _MufPortalState extends State<MufPortal> {
  bool _isTapped = true;

  void _toggleIcon() {
    setState(() {
      if (_isTapped) {
        _isTapped = false;
      } else {
        _isTapped = true;
      }
    });
  }

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
          children: <Widget>[
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
                    autofocus: true,
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
                    trailing: IconButton(
                      icon: (_isTapped
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)),
                      iconSize: 25,
                      onPressed: _toggleIcon,
                    ),
                  )),
            ),
            Card(
              color: Colors.blue[900],
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Padding(
                padding: const EdgeInsets.all(0.1),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
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
              children: <Widget>[
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

// Home Page
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ListTile buildTile() {
    return ListTile(
      leading: Icon(
        Icons.list,
        size: 25,
      ),
      title: Text('ORDER'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Order()),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MUF Portal"),
        backgroundColor: Colors.blue[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 25,
            ),
            onPressed: () {
              print('icon notification pressed');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MufPortal()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          children: <Widget>[
            DrawerHeader(
              child: Image.asset('images/Logo-MUF-Portal2.png'),
            ),
            ListTile(
              leading: Icon(
                Icons.list,
                size: 25,
              ),
              title: Text('ORDER'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.print,
                size: 25,
              ),
              title: Text('CETAK PO & SIP BPKB'),
              onTap: () {
                print('tapped CETAK PO & SIP BPKB');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 25,
              ),
              title: Text('PROFILE'),
              onTap: () {
                print('tapped PROFILE');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.priority_high,
                size: 25,
              ),
              title: Text('MUF NEWS'),
              onTap: () {
                print('tapped MUF NEWS');
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Center(
          child: Container(
        child: Text(
          'Selamat datang',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}

// Order Page
class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
        backgroundColor: Colors.blue[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 25,
            ),
            onPressed: () {
              print('icon notification pressed');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MufPortal()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('images/Logo-MUF-Portal2.png'),
            ),
            ListTile(
              leading: Icon(
                Icons.list,
                size: 25,
              ),
              title: Text('ORDER'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.print,
                size: 25,
              ),
              title: Text('CETAK PO & SIP BPKB'),
              onTap: () {
                print('tapped CETAK PO & SIP BPKB');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 25,
              ),
              title: Text('PROFILE'),
              onTap: () {
                print('tapped PROFILE');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.priority_high,
                size: 25,
              ),
              title: Text('MUF NEWS'),
              onTap: () {
                print('tapped MUF NEWS');
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Center(
          child: Container(
        child: Text(
          'Order Page',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
