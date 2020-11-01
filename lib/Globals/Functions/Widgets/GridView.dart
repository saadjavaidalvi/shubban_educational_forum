import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';

CGridView(
    {@required List<String> headings,
    @required List<String> subtexts,
    @required List<Function> functions}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10.0, 25, 10, 25),
    child: Container(
      decoration: BoxDecoration(
          color: CColors.yellow, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 15, 5.0, 15),
        child: GridView.builder(
            // physics: ,
            primary: false,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.2),
            itemCount: headings.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: functions[index],
                child: Container(
                  decoration: BoxDecoration(
                      color: CColors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: CColors.dGreen,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.circle,
                                      color: Colors.black26,
                                      size: 13,
                                    )),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 5.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        headings[index].toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        subtexts[index].toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              );
            }),
      ),
    ),
  );
}
