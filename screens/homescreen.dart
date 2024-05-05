import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'datalist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    margin:  EdgeInsets.only(top: i==0?80:15, left: 20, right: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.4)),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DataListScreen(),
                          ),
                        );
                      },
                      title: Text(
                        "${DateTime.now().day > 10 ? DateTime.now().day : "0${DateTime.now().day}"}/${DateTime.now().month > 10 ? DateTime.now().month : "0${DateTime.now().month}"}/${DateTime.now().year}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TOTAL  : 13 \nPending : 5    |    Marked : 8",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      trailing: Icon(
                        CupertinoIcons.right_chevron,
                        color: Colors.white.withOpacity(0.5),
                        weight: 20,
                      ),
                    ),
                  );
                }),
            Positioned(
              top: 0,
              child: Container(
                  // height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),
                  child: SearchField()),
            )
          ],
        ));
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.yellow), // Yellow text color
      decoration: InputDecoration(
        hintText: 'Search...',
        hintStyle: TextStyle(
            color: Colors.yellow.withOpacity(0.5)), // Yellow hint text color
        prefixIcon: const Icon(Icons.search,
            color: Colors.yellow), // Yellow search icon
        filled: true,
        fillColor: Colors.grey[800], // Dark background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      ),
    );
  }
}
