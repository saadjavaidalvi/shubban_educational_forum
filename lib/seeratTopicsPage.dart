import 'package:flutter/material.dart';

import 'Globals/Classes/Colors.dart';
import 'Globals/Functions/Widgets.dart';

class SeeratTopics extends StatelessWidget {
  List<String> homeOptionsHeading = [
    "khatm-e-nabuwat",
    "namoos-e-risalat",
    "haqooq-e-mustafa",
    "seerat-un-nabi",
    "buniadi insani",
    "fitna-e-qadianiat",
    "qadianiat ordinence",
    "faq's"
  ];
  List<String> homeOptionsSubtext = [
    "(p.b.u.h)",
    "(p.b.u.h)",
    "(p.b.u.h)",
    "(p.b.u.h)",
    "haqooq",
    "siasi tehreek ya mazhabi?",
    "1984 (298 b,c)",
    ""
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
        context: context,
        title: 'SEERAT TOPICS',
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 50, 10, 50),
          child: Container(
            // color: CColors.yellow,
            decoration: BoxDecoration(
                color: CColors.yellow, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 15, 5.0, 15),
              child: GridView.builder(
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.5),
                  itemCount: homeOptionsHeading.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            homeOptionsHeading[index]
                                                .toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            homeOptionsSubtext[index]
                                                .toUpperCase(),
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
                    );
                  }),
            ),
          ),
        ));
  }
}
