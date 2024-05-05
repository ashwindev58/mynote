import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'addeditscreen.dart';
import 'changeresult.dart';
import 'changestatus.dart';
import 'homescreen.dart';

class DataListScreen extends StatelessWidget {
  const DataListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserDetailsScreen(),
              ),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow,
          isExtended: true,
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    margin: EdgeInsets.only(
                        top: i == 0 ? 80 : 15, left: 20, right: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.4)),
                    child: ListTile(
                      title: const Text(
                        "Abu Salim",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "BCE : 13   |   Week : 5   |   ",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showCustomAlertDialog(context);
                                },
                                child: Text(
                                  i.isOdd ? " Fail " : " Pass ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: i.isOdd
                                        ? Colors.red.withOpacity(0.7)
                                        : Colors.green.withOpacity(0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChangeStatusScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                OnWidget(
                                  i: i,
                                  name: "Whatsaap",
                                ),
                                 Iwidget(),
                                OnWidget(name: "Sheet", i: i - 1),
                                Iwidget(),
                                OnWidget(name: "BackUp", i: i - 1),
                              ],
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.yellow.withOpacity(0.5),
                        weight: 30,
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
                  child: const SearchField()),
            )
          ],
        ));
  }
}

class OnWidget extends StatelessWidget {
  final String name;
  final int i;

  const OnWidget({
    super.key,
    required this.name,
    required this.i,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          color: i.isEven
              ? Colors.grey.withOpacity(0.7)
              : Colors.blue[600]?.withOpacity(0.7),
          fontSize: 11),
    );
  }
}

class Iwidget extends StatelessWidget {
  double? fontsize;
  
  FontWeight? fontWeight;

   Iwidget({
    super.key,this.fontsize,this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      " | ",
      style: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontWeight: fontWeight??FontWeight.w900,
        fontSize: fontsize??20,
      ),
    );
  }
}
