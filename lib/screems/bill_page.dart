import 'package:flutter/material.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: const AppBar(),
    );
  }
}

class AppBar extends StatelessWidget implements PreferredSizeWidget{
  const AppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(200);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.orange.shade300,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const IconButton(
                icon: Icon(
                  Icons.sort_rounded,
                  size: 30,
                ),
                color: Colors.white,
                onPressed: null,
              ),
              const IconButton(
                icon: Icon(
                  Icons.category_rounded,
                  size: 30,
                ),
                color: Colors.white,
                onPressed: null,
              ),
            ],
          ),
          const SizedBox(height: 20),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(left: 3, bottom: 15),
            // ignore: prefer_const_constructors
            child: Text(
              "Factures",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                wordSpacing: 2,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 20),
            width: MediaQuery.of(context).size.width,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search here....",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}