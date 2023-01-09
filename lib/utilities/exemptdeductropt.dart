import 'package:flutter/material.dart';
import '../utilities/TextField_with_Button.dart';
import '../utilities/controller.dart';
import '../utilities/Single_textField.dart';

class ExemptDeductOpt extends StatelessWidget {
  const ExemptDeductOpt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80C',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Life Insurance, PPF, EPF, ELSS, NPS...',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  height: 640,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Public Provident Fund'),
                        TextField_with_Button(
                          tc: publicProvidentFund,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text('Equity Linked Saving Scheme'),
                        TextField_with_Button(
                          tc: EquityLinked,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text('Employee Provident Fund'),
                        TextField_with_Button(
                          tc: EmployeeProvidentFund,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text('Life Insurance'),
                        TextField_with_Button(
                          tc: LifeInsurance,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text('House Loan Principal'),
                        TextField_with_Button(
                          tc: HouseLoanPr,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text('National Pension Scheme'),
                        TextField_with_Button(
                          tc: NationalPen,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text('Tution Fees'),
                        TextField_with_Button(
                          tc: TutionFees,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text('Others'),
                        TextField_with_Button(
                          tc: Others_80C,
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
                Text(
                  '80GG',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Deduction on Rent Paid',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  height: 35,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Page not Built for this ooption'),
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
                Text(
                  'Professional Tax',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Professional Tax',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: professionalTax,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80D',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Health Insurance Premia',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: D80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80DD',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Disabled Dependant Maintenance',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: DD80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80DDB',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Medical Treatment Expenses',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: BDD80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Section 24(B)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Interest on Home Loan',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: section24,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80CCD (1B)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'National Pension Scheme - Additional benefit',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: DCC80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80EEA',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Interest on loan for Affordable Housing',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: AEE80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food Coupons',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Food Coupons',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: FoodCoupons,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80U',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Deduction for Disabled Individuals',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: U80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80EEB',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Interest on loan for purchase of Electric Vehicle',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: BEE80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80E',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Interest on Education loan',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: E80,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80G - Eligible Deduction 50%',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Donations',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(
                tc: G80_50,
              ),
            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '80G - Eligible Deduction 100%',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Donations',
                  style: TextStyle(fontSize: 14.5),
                ),
              ],
            ),
            children: [
              SingleTextField(tc: G80_100),
            ],
          ),
        ],
      ),
    );
  }
}
