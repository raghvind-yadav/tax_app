import 'package:flutter/material.dart';

// Saving and Income
var bp = double.parse(Business.value.text.toString()) +
    double.parse(Profession.value.text.toString());
final Business = TextEditingController(text: '0');
final Profession = TextEditingController(text: '0');

var S = double.parse(S_basic.value.text.toString()) +
    double.parse(S_HRA.value.text.toString()) +
    double.parse(S_bonus.value.text.toString()) +
    double.parse(S_other.text.toString());

final S_basic = TextEditingController(text: '0');
final S_HRA = TextEditingController(text: '0');
final S_bonus = TextEditingController(text: '0');
final S_other = TextEditingController(text: '0');

var C = double.parse(C_st0.value.text.toString()) +
    double.parse(C_st15.value.text.toString()) +
    double.parse(C_lt10.value.text.toString()) +
    double.parse(C_lt20.text.toString());
final C_st0 = TextEditingController(text: '0');
final C_st15 = TextEditingController(text: '0');
final C_lt10 = TextEditingController(text: '0');
final C_lt20 = TextEditingController(text: '0');

var I = double.parse(Int_saving.value.text.toString()) +
    double.parse(Int_fixed.value.text.toString()) +
    double.parse(other.value.text.toString());
final Int_saving = TextEditingController(text: '0');
final Int_fixed = TextEditingController(text: '0');
final other = TextEditingController(text: '0');

// Exemptions and Deductions
final publicProvidentFund = TextEditingController(text: '0');
final EmployeeProvidentFund = TextEditingController(text: '0');
final LifeInsurance = TextEditingController(text: '0');
final EquityLinked = TextEditingController(text: '0');
final HouseLoanPr = TextEditingController(text: '0');
final NationalPen = TextEditingController(text: '0');
final TutionFees = TextEditingController(text: '0');
final Others_80C = TextEditingController(text: '0');

final professionalTax = TextEditingController(text: '0');
final D80 = TextEditingController(text: '0');
final DD80 = TextEditingController(text: '0');
final BDD80 = TextEditingController(text: '0');
final section24 = TextEditingController(text: '0');
final DCC80 = TextEditingController(text: '0');
final AEE80 = TextEditingController(text: '0');
final FoodCoupons = TextEditingController(text: '0');
final U80 = TextEditingController(text: '0');
final BEE80 = TextEditingController(text: '0');
final E80 = TextEditingController(text: '0');
final G80_50 = TextEditingController(text: '0');
final G80_100 = TextEditingController(text: '0');
