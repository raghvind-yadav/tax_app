import 'package:flutter/material.dart';
import '../utilities/exemptdeductropt.dart';

class ExemptDeduct extends StatefulWidget {
  const ExemptDeduct({super.key});

  @override
  State<ExemptDeduct> createState() => _ExemptDeductState();
}

class _ExemptDeductState extends State<ExemptDeduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemptions & Deductions')),
      body: ExemptDeductOpt(),
    );
  }
}
