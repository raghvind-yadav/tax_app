import 'dart:ffi';

import 'package:flutter/material.dart';
import '../utilities/TextField_with_Button.dart';
import '../utilities/controller.dart';

class SalaryIncomeOpt extends StatefulWidget {
  const SalaryIncomeOpt({
    Key? key,
  }) : super(key: key);

  @override
  State<SalaryIncomeOpt> createState() => _SalaryIncomeOptState();
}

class _SalaryIncomeOptState extends State<SalaryIncomeOpt> {
  double bp = 0;
  double sal = 0;
  double capGain = 0;
  double otherSources = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Business and Profession',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹ $bp',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  'Taxable income from Business and Profession',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  height: 160,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Business'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      bp = double.parse(Business.value.text) +
                                          double.parse(Profession.value.text);
                                    });
                                  },
                                  controller: Business,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Profession'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      bp = double.parse(Business.value.text) +
                                          double.parse(Profession.value.text);
                                    });
                                  },
                                  controller: Profession,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Salary',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹ $sal',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  'Salary, Bonus, Allowances...',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  height: 320,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Basic + DA(Dearness Allowance)'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      sal = double.parse(S_basic.value.text) +
                                          double.parse(S_HRA.value.text) +
                                          double.parse(S_bonus.value.text) +
                                          double.parse(S_other.value.text);
                                    });
                                  },
                                  controller: S_basic,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('HRA(House Rent Allowance)'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      sal = double.parse(S_basic.value.text) +
                                          double.parse(S_HRA.value.text) +
                                          double.parse(S_bonus.value.text) +
                                          double.parse(S_other.value.text);
                                    });
                                  },
                                  controller: S_HRA,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Bonus, Commission...'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      sal = double.parse(S_basic.value.text) +
                                          double.parse(S_HRA.value.text) +
                                          double.parse(S_bonus.value.text) +
                                          double.parse(S_other.value.text);
                                    });
                                  },
                                  controller: S_bonus,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Other Allowance'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      sal = double.parse(S_basic.value.text) +
                                          double.parse(S_HRA.value.text) +
                                          double.parse(S_bonus.value.text) +
                                          double.parse(S_other.value.text);
                                    });
                                  },
                                  controller: S_other,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Capital Gains',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹ $capGain',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  'Income from Capital Gains',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  height: 320,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            'Short Term Capital Gain - Taxable at Nor...'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      capGain = double.parse(C_st0.value.text) +
                                          double.parse(C_st15.value.text) +
                                          double.parse(C_lt10.value.text) +
                                          double.parse(C_lt20.value.text);
                                    });
                                  },
                                  controller: C_st0,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Short Term Capital Gain - Taxable @ 15%'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      capGain = double.parse(C_st0.value.text) +
                                          double.parse(C_st15.value.text) +
                                          double.parse(C_lt10.value.text) +
                                          double.parse(C_lt20.value.text);
                                    });
                                  },
                                  controller: C_st15,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Long Term Capital Gain - Taxable @ 10%'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      capGain = double.parse(C_st0.value.text) +
                                          double.parse(C_st15.value.text) +
                                          double.parse(C_lt10.value.text) +
                                          double.parse(C_lt20.value.text);
                                    });
                                  },
                                  controller: C_lt10,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Long Term Capital Gain - Taxable @ 20%'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      capGain = double.parse(C_st0.value.text) +
                                          double.parse(C_st15.value.text) +
                                          double.parse(C_lt10.value.text) +
                                          double.parse(C_lt20.value.text);
                                    });
                                  },
                                  controller: C_lt20,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Other Sources',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹ $otherSources',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  'Income from Other Sources',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  height: 240,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Interest from Savings Bank Accounts'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      otherSources = double.parse(
                                              Int_saving.value.text) +
                                          double.parse(Int_fixed.value.text) +
                                          double.parse(other.value.text);
                                    });
                                  },
                                  controller: Int_saving,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Interest from Fixed Deposits'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      otherSources = double.parse(
                                              Int_saving.value.text) +
                                          double.parse(Int_fixed.value.text) +
                                          double.parse(other.value.text);
                                    });
                                  },
                                  controller: Int_fixed,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const Text('Other Sources'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 40,
                                width: 200,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      otherSources = double.parse(
                                              Int_saving.value.text) +
                                          double.parse(Int_fixed.value.text) +
                                          double.parse(other.value.text);
                                    });
                                  },
                                  controller: other,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                )),
                            const changeableButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class changeableButton extends StatefulWidget {
  const changeableButton({
    Key? key,
  }) : super(key: key);

  @override
  State<changeableButton> createState() => _changeableButtonState();
}

class _changeableButtonState extends State<changeableButton> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
        child: flag ? const Text('Yearly') : const Text('Monthly'));
  }
}
