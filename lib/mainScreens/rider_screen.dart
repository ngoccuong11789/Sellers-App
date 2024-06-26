import 'package:flutter/material.dart';
import 'package:foods_sellers_app/assistantMethods/get_current_location.dart';
import 'package:foods_sellers_app/mainScreens/home_screen.dart';
// import 'package:foodpanda_riders_app/authentication/auth_screen.dart';
// import 'package:foodpanda_riders_app/global/global.dart';
//import 'package:foodpanda_riders_app/mainScreens/new_orders_screen.dart';
import 'package:foods_sellers_app/mainScreens/newn_orders_rider_screen.dart';
import 'package:foods_sellers_app/mainScreens/parcel_in_progress_screen.dart';

class RiderScreen extends StatefulWidget {
  const RiderScreen({Key? key}) : super(key: key);

  @override
  _RiderScreenState createState() => _RiderScreenState();
}

class _RiderScreenState extends State<RiderScreen> {
  Card makeDashboardItem(String title, IconData iconData, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? const BoxDecoration(
                gradient: LinearGradient(
                colors: [
                  Colors.amber,
                  Colors.cyan,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ))
            : const BoxDecoration(
                gradient: LinearGradient(
                colors: [
                  Colors.redAccent,
                  Colors.amber,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              //New Available Orders
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => NewOrdersRiderScreen()));
            }
            if (index == 1) {
              //Parcels in Progress
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => ParcelInProgressScreen()));
            }
            if (index == 2) {
              //Not Yet Delivered
            }
            if (index == 3) {
              //History
            }
            if (index == 4) {
              //Total Earnings
            }
            if (index == 5) {
              //Logout
              // firebaseAuth.signOut().then((value){
              //   Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));
              // });
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => const HomeScreen()));
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50.0),
              Center(
                child: Icon(
                  iconData,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10.0),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    UserLocation uLocation = UserLocation();
    uLocation.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.cyan,
              Colors.amber,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
        ),
        title: Text(
          "Welcome ",
          //sharedPreferences!.getString("name")!,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.black,
            fontFamily: "Signatra",
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 1),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(2),
          children: [
            makeDashboardItem("New Available Orders", Icons.assignment, 0),
            makeDashboardItem("Parcels in Progress", Icons.airport_shuttle, 1),
            makeDashboardItem("Not Yet Delivered", Icons.location_history, 2),
            makeDashboardItem("History", Icons.done_all, 3),
            makeDashboardItem("Total Earnings", Icons.monetization_on, 4),
            makeDashboardItem("Home Screen", Icons.logout, 5),
          ],
        ),
      ),
    );
  }
}
