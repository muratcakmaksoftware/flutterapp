import 'package:flutterapp/views/config.dart';

class Home extends StatelessWidget {

  Future<bool> _onWillPop() async {
    print("trest");
  }

  @override
  Widget build(BuildContext context) {

    Future<bool> _onBackPressed() {
      return Future<bool>.value(false); //kullanıcının giriş yaptıktan sonra geri gitmesini engellemek.
      //popup
      /*return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('Do you want to exit an App'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => Navigator.of(context).pop(false),
              child: Text("NO"),
            ),
            SizedBox(height: 16),
            new GestureDetector(
              onTap: () => Navigator.of(context).pop(true),
              child: Text("YES"),
            ),
          ],
        ),
      ) ??
          false;*/
    }

    return WillPopScope(
      onWillPop: _onBackPressed,
      child:MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DefaultTabController(
            length: 4,
            child: Scaffold(
              /*appBar: AppBar(
                title: Text('Home'),
              ),*/
              bottomNavigationBar: menu(),
              body: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ),
        ),
    );
  }

  Widget menu() {
    return Container(
      color: Color(0xFF3F5AA6),
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: "Transactions",
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "Bills",
            icon: Icon(Icons.assignment),
          ),
          Tab(
            text: "Balance",
            icon: Icon(Icons.account_balance_wallet),
          ),
          Tab(
            text: "Options",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

