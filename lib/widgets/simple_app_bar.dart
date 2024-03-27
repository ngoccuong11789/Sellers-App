import 'package:flutter/material.dart';

class SimpleAppBar extends AppBar {
  //String? title ;
  Widget? title;
  final PreferredSizeWidget? bottom;

  SimpleAppBar({this.bottom, this.title});

  @override
  Size get preferredSize => bottom == null
      ? Size(56, AppBar().preferredSize.height)
      : Size(56, 80 + AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
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
              tileMode: TileMode.clamp),
        ),
      ),
      centerTitle: true,
      // title: Text(
      //   title ?? "iFood",
      //   style: TextStyle(
      //       fontSize: 45.0,
      //       letterSpacing: 3,
      //       color: Colors.white,
      //       fontFamily: "Signatra"),
      // ),
      title: title,
    );
  }
}


// class MyAppBar extends AppBar {
//   final BuildContext context; // Add BuildContext as a parameter

//   MyAppBar({required this.context, PreferredSizeWidget? bottom})
//       : super(
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.cyan,
//                   Colors.amber,
//                 ],
//                 begin: FractionalOffset(0.0, 0.0),
//                 end: FractionalOffset(1.0, 0.0),
//                 stops: [0.0, 1.0],
//                 tileMode: TileMode.clamp,
//               ),
//             ),
//           ),
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text(
//             "iFood",
//             style: TextStyle(fontSize: 45, fontFamily: "Signatra"),
//           ),
//           centerTitle: true,
//           automaticallyImplyLeading: true,
//           actions: [
//             Stack(
//               children: [
//                 IconButton(
//                   icon: const Icon(
//                     Icons.shopping_cart,
//                     color: Colors.cyan,
//                   ),
//                   onPressed: () {
//                     //send user to cart screen
//                   },
//                 ),
//                 Positioned(
//                   child: Stack(
//                     children: [
//                       Icon(
//                         Icons.brightness_1,
//                         size: 20.0,
//                         color: Colors.green,
//                       ),
//                       Positioned(
//                         top: 3,
//                         right: 4,
//                         child: Center(child: Consumer<CartItemCounter>(
//                           builder: (context, counter, c) {
//                             return Text(
//                               counter.count.toString(),
//                               style: const TextStyle(
//                                   color: Colors.white, fontSize: 12),
//                             );
//                           },
//                         )),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         );

//   @override
//   Size get preferredSize => bottom == null
//       ? Size(56, super.preferredSize.height)
//       : Size(56, 80 + super.preferredSize.height);
// }