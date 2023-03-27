import 'package:flutter/material.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({super.key});

  @override
  State<TabSearch> createState() => _TabSearchtState();
}

class _TabSearchtState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  onTap: () {
                    //Go to the next screen
                  },
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: const EdgeInsets.only(right: 5),
                        width: 20,
                        child: Image.asset('assets/images/logo.png'),
                      )),
                ),
              ),
              /* Container(
                  margin: const EdgeInsets.only(left: 10),
                 // padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  width: 25,
                  child: Image.asset('assets/images/search.png')),*/
            ],
          )
        ],
      ),
    );
  }
}


