import 'package:flutter/material.dart';
import 'package:tax_app/utilities/exemptdeductropt.dart';
import 'package:tax_app/utilities/salaryIncomeopt.dart';
import 'screens/Salary_income.dart';

import 'screens/Exemptions_deductions.dart';

class Tax_Calculator extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  @override
  State<Tax_Calculator> createState() => _Tax_CalculatorState();
}

class _Tax_CalculatorState extends State<Tax_Calculator> {
  bool opt = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Tax Calculation App'),
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 10.0, left: 10, right: 10, top: 20),
            child: Stack(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Row(
                    //   children: [
                    //     IconButton(
                    //       onPressed: () {
                    //         Navigator.of(context).pop();
                    //       },
                    //       icon: const Icon(Icons.arrow_back),
                    //     ),
                    //     const SizedBox(
                    //       width: 20,
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Padding(
                    //           padding: const EdgeInsets.only(top: 20),
                    //           child: Text(
                    //             'My Tax Calculation',
                    //             style: TextStyle(
                    //                 fontSize: 18, fontWeight: FontWeight.w500),
                    //           ),
                    //         ),
                    //         const SizedBox(
                    //           height: 20,
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => BarcodeScannerView()),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8.0,
                                          offset: Offset(3, 3))
                                    ],
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          width: 120,
                                          child: Image.asset(
                                              'assets/images/old_regime.jpg')),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Old Regime',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            fit: FlexFit.tight,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => PoseDetectorView()),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8.0,
                                          offset: Offset(3, 3))
                                    ],
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height: 100,
                                          width: 120,
                                          child: Image.asset(
                                              'assets/images/new_regime.jpg')),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'New Regime',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  opt = true;
                                });
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => SalaryIncome()),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8.0,
                                          offset: Offset(3, 3))
                                    ],
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SizedBox(
                                        //     height: 108,
                                        //     width: 120,
                                        //     child: Image.asset(
                                        //         'assets/images/salary.jpg')),
                                        // const SizedBox(
                                        //   height: 10,
                                        // ),
                                        SizedBox(
                                          height: 45,
                                          child: Center(
                                            child: Text(
                                              'Salary & Income',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: opt
                                                      ? FontWeight.bold
                                                      : FontWeight.normal,
                                                  color: opt
                                                      ? Colors.blue
                                                      : Colors.black54),
                                            ),
                                          ),
                                        ),
                                        // const SizedBox(
                                        //   height: 10,
                                        // ),
                                      ]),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            fit: FlexFit.tight,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  opt = false;
                                });
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => ExemptDeduct()),
                                // );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8.0,
                                          offset: Offset(3, 3))
                                    ],
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SizedBox(
                                        //     height: 80,
                                        //     width: 100,
                                        //     child: Image.asset(
                                        //         'assets/images/deductions.png')),
                                        // SizedBox(
                                        //   height: 10,
                                        // ),
                                        SizedBox(
                                          height: 45,
                                          child: Center(
                                            child: Text(
                                              'Exemption & Deductions',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: opt
                                                      ? FontWeight.normal
                                                      : FontWeight.bold,
                                                  color: opt
                                                      ? Colors.black54
                                                      : Colors.blue),
                                            ),
                                          ),
                                        ),
                                        // s
                                      ]),
                                ),
                              ),
                            ))
                      ],
                    ),
                    Flexible(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 10, bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    opt ? SalaryIncome() : ExemptDeduct()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8.0,
                                    offset: Offset(3, 3))
                              ],
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: opt ? SalaryIncomeOpt() : ExemptDeductOpt(),
                        ),
                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
