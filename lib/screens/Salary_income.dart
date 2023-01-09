import 'package:flutter/material.dart';
import '../utilities/salaryIncomeopt.dart';

class SalaryIncome extends StatefulWidget {
  const SalaryIncome({super.key});

  @override
  State<SalaryIncome> createState() => _SalaryIncomeState();
}

class _SalaryIncomeState extends State<SalaryIncome> {
  // var bp = double.parse(Business.value.text.toString()) +
  //     double.parse(Profession.value.text.toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Salary & Income')),
      body: SalaryIncomeOpt(),
    );
  }
}
