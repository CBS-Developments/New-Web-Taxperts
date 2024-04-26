import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../CalculatorComponants.dart';
import '../Sizes.dart';
import '../colors.dart';
import 'package:intl/intl.dart';

class CalculatorTablet extends StatefulWidget {
  const CalculatorTablet({super.key});

  @override
  State<CalculatorTablet> createState() => _CalculatorTabletState();
}

class _CalculatorTabletState extends State<CalculatorTablet> {
  bool log = true;
  bool visibility = false;
  int test = 0;
  int grossSalaryId = 0;
  int profitsFromBusinessId = 0;
  int interestIncomeId = 0;
  int dividendIncomeId = 0;
  int rentIncomeId = 0;
  int otherIncomeId = 0;
  int healthMedicalExpensesId = 0;
  int medicalInsurancePremiumId = 0;
  int localEducationSelfId = 0;
  int localEducationChildrenId = 0;
  int housingLoanInterestId = 0;
  int pensionContributionId = 0;
  int purchaseSharedDebentureTreasuryId = 0;
  int bondsTreasuryBillsId = 0;
  int donationToApprovedCharityId = 0;
  int installmentPaymentId = 0;
  int donationToGovernmentId = 0;
  int quarterId = 0;
  int professionalServiceId = 0;
  int royaltyId = 0;
  int aitWhtId = 0;

  int grossSalaryRadioButtonItem = 0;
  int profitsFromBusinessRadioButtonItem = 0;
  int interestIncomeRadioButtonItem = 0;
  int dividendIncomeRadioButtonItem = 0;
  int rentIncomeRadioButtonItem = 0;
  int otherIncomeRadioButtonItem = 0;
  int healthMedicalExpensesRadioButtonItem = 0;
  int medicalInsurancePremiumRadioButtonItem = 0;
  int localEducationSelfRadioButtonItem = 0;
  int localEducationChildrenRadioButtonItem = 0;
  int housingLoanInterestRadioButtonItem = 0;
  int pensionContributionRadioButtonItem = 0;
  int purchaseSharedDebentureTreasuryRadioButtonItem = 0;
  int bondsTreasuryBillsRadioButtonItem = 0;
  int donationToApprovedCharityRadioButtonItem = 0;
  int installmentPaymentRadioButtonItem = 0;
  int donationToGovernmentRadioButtonItem = 0;
  int quarter = 0;

  int professionalServiceRadioButtonItem = 0;
  int royaltyRadioButtonItem = 0;
  int aitWhtRadioButtonItem = 0;

  late TextEditingController grossSalary,
      profitsFromBusiness,
      interestIncome,
      dividendIncome,
      rentIncome,
      otherIncome,
      healthMedicalExpenses,
      medicalInsurancePremium,
      localEducationSelf,
      localEducationChildren,
      housingLoanInterest,
      pensionContribution,
      purchaseSharedDebentureTreasury,
      bondsTreasuryBills,
      solarInstallationCost,
      donationToApprovedCharity,
      donationToGovernment,
      installmentPayment,
      professionalServices,
      royalty,
      aitWht,
      name,
      phone,
      email;

  String grossSalaryType = "";
  String profitsFromBusinessType = "";
  String interestIncomeType = "";
  String dividendIncomeType = "";
  String rentIncomeType = "";
  String otherIncomeType = "";
  String healthMedicalExpensesType = "";
  String medicalInsurancePremiumType = "";
  String localEducationSelfType = "";
  String localEducationChildrenType = "";
  String housingLoanInterestType = "";
  String pensionContributionType = "";
  String purchaseSharedDebentureTreasuryType = "";
  String bondsTreasuryBillsType = "";
  String solarInstallationCostType = "";
  String donationToApprovedCharityType = "";
  String installmentPaymentType = "";
  String donationToGovernmentType = "";
  String finalTaxable = "";

  double annualGrossSalary = 0;
  double monthlyGrossSalary = 0;
  double annualProfitsFromBusiness = 0;
  double annualInterestIncome = 0;
  double annualInterestIncomeDeduction = 0;
  double annualDividendIncome = 0;
  double annualDividendIncomeDeduction = 0;
  double annualRentIncome = 0;
  double annualRentIncomeTax = 0;
  double annualOtherIncome = 0;
  double annualhealthMedicalExpenses = 0;
  double annualmedicalInsurancePremium = 0;
  double annuallocalEducationSelf = 0;
  double annuallocalEducationChildren = 0;
  double annualhousingLoanInterest = 0;
  double annualpensionContribution = 0;
  double annualpurchaseSharedDebentureTreasury = 0;
  double annualbondsTreasuryBills = 0;
  double annualsolarInstallationCost = 0;
  double annualdonationToApprovedCharity = 0;
  double annualdonationToGovernment = 0;
  double finalInstalment = 0;
  double finalInstalmentQuartly = 0;
  double finalInstalmentAnnually = 0;
  double personalRelief = 1200000;
  double rentIncomeDeduction = 0;
  double totalDiffrentForDonation = 0;
  double finalValueForDonationToApprovedCharity = 0;
  double finalValueFordonationToGovernment = 0;
  double expensesReliefTotal = 0;
  double taxableIncome = 0;
  double balanceTaxPayble = 0;
  double annualTaxCredit = 0;
  double totalIncomeQuartly = 0;
  double totalIncomeAnnually = 0;
  double annualProfessionalService = 0;
  double taxableIncomeAnnualyAfterDonation = 0;
  double taxableIncomeAnnualyAfterGovenmentDonation = 0;
  double annualRoyalty = 0;
  double annualRoyaltyTax = 0;
  double annualAitWht = 0;
  double totalGanisAndProfitAnnually = 0;
  double totalGanisAndProfitQuartly = 0;

  var monthlyAPIT = "";
  var taxPaybleQuartly = "";
  var taxPaybleAnnualy = "";
  var grossSalaryQuartly = "";
  var grossSalaryAnnualy = "";
  var taxDeductedAtSourceQuartly = "";
  var taxDeductedAtSourceAnnualy = "";
  var quartlyInstalmentPayment = "";
  var annuallyInstalmentPayment = "";
  var varBalanceTaxPayableForTheYear = "";
  var varBalanceTaxPayableForTheQuarter = "";
  var quarterTaxPayble = "";
  var apitDeducted = "";
  var monthlyTaxPayableVar = "";
  var balanceTaxPayableAfterAPITVar = "";
  var totalGanisAndProfitAnnuallyVar = "";
  var totalGanisAndProfitQuartlyVar = "";
  var balanceTaxPaybleFortheQuarter = "";
  var balanceTaxPaybleFortheAnnually = "";
  var varTotalTaxpayableforTheYear = "";
  var varTotalTaxpayableforTheQuarter = "";
  var varTdsAnnualy = "";
  var varTdsQuartly = "";
  var formatter = NumberFormat('###,###,###,###.##');

  @override
  void initState() {
    super.initState();
    grossSalary = TextEditingController();
    profitsFromBusiness = TextEditingController();
    interestIncome = TextEditingController();
    dividendIncome = TextEditingController();
    rentIncome = TextEditingController();
    otherIncome = TextEditingController();
    healthMedicalExpenses = TextEditingController();
    medicalInsurancePremium = TextEditingController();
    localEducationSelf = TextEditingController();
    localEducationChildren = TextEditingController();
    housingLoanInterest = TextEditingController();
    pensionContribution = TextEditingController();
    purchaseSharedDebentureTreasury = TextEditingController();
    bondsTreasuryBills = TextEditingController();
    solarInstallationCost = TextEditingController();
    donationToApprovedCharity = TextEditingController();
    donationToGovernment = TextEditingController();
    installmentPayment = TextEditingController();
    professionalServices = TextEditingController();
    royalty = TextEditingController();
    aitWht = TextEditingController();
    name = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Text(
                'Tax Calculator 2023/2024',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColor.textDark,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 160,
                    color: AppColor.conGreen,
                    width: double.infinity,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Estimate Individual Tax Payable',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 2),
                          child: Text(
                            '- Calculate your quarterly income tax payable at free with Taxperts',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 2),
                          child: Text(
                            '- The tax year is starts on 01st April and ends at 31st March ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 2),
                          child: Text(
                            '- Find out how Tax changes affect you',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 45.0, vertical: 15),
                    child: Text(
                      'Gains & Profits',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextContainer(
                                  childText: 'Gross Salary',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: 'Profits from Business',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: 'Interest Income',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: 'Dividend Income',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: 'Rent Income',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText:
                                  'Professional Services/Service Fees',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: 'Royalty',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: 'Other Income',
                                  fontSize: 15,
                                  textColor: Colors.black),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TexfeildContainer(
                                controller: grossSalary,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: profitsFromBusiness,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: interestIncome,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: dividendIncome,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: rentIncome,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: professionalServices,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: royalty,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: otherIncome,
                                hintText: 'amount',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: grossSalaryId,
                                onChanged: (val) {
                                  setState(() {
                                    grossSalaryRadioButtonItem = 12;
                                    grossSalaryId = 1;
                                  });
                                },
                                value: 1,
                                timeText: 'Monthly',
                              ),
                              RedioContainerTab(
                                groupValue: profitsFromBusinessId,
                                onChanged: (val) {
                                  setState(() {
                                    profitsFromBusinessRadioButtonItem = 12;
                                    profitsFromBusinessId = 4;
                                  });
                                },
                                value: 4,
                                timeText: 'Monthly',
                              ),
                              RedioContainerTab(
                                  groupValue: interestIncomeId,
                                  onChanged: (val) {
                                    setState(() {
                                      interestIncomeRadioButtonItem = 12;
                                      interestIncomeId = 7;
                                    });
                                  },
                                  timeText: 'Monthly',
                                  value: 7),
                              RedioContainerTab(
                                  groupValue: dividendIncomeId,
                                  onChanged: (val) {
                                    setState(() {
                                      dividendIncomeRadioButtonItem = 12;
                                      dividendIncomeId = 10;
                                    });
                                  },
                                  timeText: 'Monthly',
                                  value: 10),
                              RedioContainerTab(
                                  groupValue: rentIncomeId,
                                  onChanged: (val) {
                                    setState(() {
                                      rentIncomeRadioButtonItem = 12;
                                      rentIncomeId = 13;
                                    });
                                  },
                                  timeText: 'Monthly',
                                  value: 13),
                              RedioContainerTab(
                                  groupValue: professionalServiceId,
                                  onChanged: (val) {
                                    setState(() {
                                      professionalServiceRadioButtonItem = 12;
                                      professionalServiceId = 16;
                                    });
                                  },
                                  timeText: 'Monthly',
                                  value: 16),
                              RedioContainerTab(
                                  groupValue: royaltyId,
                                  onChanged: (val) {
                                    setState(() {
                                      royaltyRadioButtonItem = 12;
                                      royaltyId = 19;
                                    });
                                  },
                                  timeText: 'Monthly',
                                  value: 19),
                              RedioContainerTab(
                                  groupValue: otherIncomeId,
                                  onChanged: (val) {
                                    setState(() {
                                      otherIncomeRadioButtonItem = 12;
                                      otherIncomeId = 22;
                                    });
                                  },
                                  timeText: 'Monthly',
                                  value: 22),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: grossSalaryId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      grossSalaryRadioButtonItem = 4;
                                      grossSalaryId = 2;
                                    });
                                  }
                                },
                                value: 2,
                                timeText: 'Quarterly',
                              ),
                              RedioContainerTab(
                                groupValue: profitsFromBusinessId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      profitsFromBusinessRadioButtonItem = 4;
                                      profitsFromBusinessId = 5;
                                    });
                                  }
                                },
                                timeText: 'Quarterly',
                                value: 5,
                              ),
                              RedioContainerTab(
                                groupValue: interestIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      interestIncomeRadioButtonItem = 12;
                                      interestIncomeId = 8;
                                    });
                                  }
                                },
                                timeText: 'Quarterly',
                                value: 8,
                              ),
                              RedioContainerTab(
                                groupValue: dividendIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      dividendIncomeRadioButtonItem = 12;
                                      dividendIncomeId = 11;
                                    });
                                  }
                                },
                                timeText: 'Quarterly',
                                value: 11,
                              ),
                              RedioContainerTab(
                                groupValue: rentIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      rentIncomeRadioButtonItem = 12;
                                      rentIncomeId = 14;
                                    });
                                  }
                                },
                                timeText: 'Quarterly',
                                value: 14,
                              ),
                              RedioContainerTab(
                                groupValue: professionalServiceId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      professionalServiceRadioButtonItem = 12;
                                      professionalServiceId = 17;
                                    });
                                  }
                                },
                                timeText: 'Quarterly',
                                value: 17,
                              ),
                              RedioContainerTab(
                                groupValue: royaltyId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      royaltyRadioButtonItem = 12;
                                      royaltyId = 20;
                                    });
                                  }
                                },
                                timeText: 'Quarterly',
                                value: 20,
                              ),
                              RedioContainerTab(
                                groupValue: otherIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      otherIncomeRadioButtonItem = 12;
                                      otherIncomeId = 23;
                                    });
                                  }
                                },
                                timeText: 'Quarterly',
                                value: 23,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: grossSalaryId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      grossSalaryRadioButtonItem = 1;
                                      grossSalaryId = 3;
                                    });
                                  }
                                },
                                value: 3,
                                timeText: 'Annually',
                              ),
                              RedioContainerTab(
                                groupValue: profitsFromBusinessId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      profitsFromBusinessRadioButtonItem = 1;
                                      profitsFromBusinessId = 6;
                                    });
                                  }
                                },
                                timeText: 'Annually',
                                value: 6,
                              ),
                              RedioContainerTab(
                                groupValue: interestIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      interestIncomeRadioButtonItem = 1;
                                      interestIncomeId = 9;
                                    });
                                  }
                                },
                                timeText: 'Annually',
                                value: 9,
                              ),
                              RedioContainerTab(
                                groupValue: dividendIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      dividendIncomeRadioButtonItem = 1;
                                      dividendIncomeId = 12;
                                    });
                                  }
                                },
                                timeText: 'Annually',
                                value: 12,
                              ),
                              RedioContainerTab(
                                groupValue: rentIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      rentIncomeRadioButtonItem = 1;
                                      rentIncomeId = 15;
                                    });
                                  }
                                },
                                timeText: 'Annually',
                                value: 15,
                              ),
                              RedioContainerTab(
                                groupValue: professionalServiceId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      professionalServiceRadioButtonItem = 1;
                                      professionalServiceId = 18;
                                    });
                                  }
                                },
                                timeText: 'Annually',
                                value: 18,
                              ),
                              RedioContainerTab(
                                groupValue: royaltyId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      royaltyRadioButtonItem = 1;
                                      royaltyId = 21;
                                    });
                                  }
                                },
                                timeText: 'Annually',
                                value: 21,
                              ),
                              RedioContainerTab(
                                groupValue: otherIncomeId,
                                onChanged: (int? newValue) {
                                  if (newValue != null) {
                                    setState(() {
                                      otherIncomeRadioButtonItem = 1;
                                      otherIncomeId = 24;
                                    });
                                  }
                                },
                                timeText: 'Annually',
                                value: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 45.0, vertical: 15),
                    child: Text(
                      'Qualifying Payments',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextContainer(
                                  childText: 'Donation to approved charity',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: 'Donation to Government',
                                  fontSize: 15,
                                  textColor: Colors.black),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TexfeildContainer(
                                controller: donationToApprovedCharity,
                                hintText: 'amount',
                              ),
                              TexfeildContainer(
                                controller: donationToGovernment,
                                hintText: 'amount',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: donationToApprovedCharityId,
                                onChanged: (val) {
                                  setState(() {
                                    donationToApprovedCharityRadioButtonItem =
                                    12;
                                    donationToApprovedCharityId = 25;
                                  });
                                },
                                value: 25,
                                timeText: 'Monthly',
                              ),
                              RedioContainerTab(
                                groupValue: donationToGovernmentId,
                                onChanged: (val) {
                                  setState(() {
                                    donationToApprovedCharityRadioButtonItem =
                                    12;
                                    donationToGovernmentId = 28;
                                  });
                                },
                                value: 28,
                                timeText: 'Monthly',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: donationToApprovedCharityId,
                                onChanged: (val) {
                                  setState(() {
                                    donationToApprovedCharityRadioButtonItem =
                                    12;
                                    donationToApprovedCharityId = 26;
                                  });
                                },
                                value: 26,
                                timeText: 'Quarterly',
                              ),
                              RedioContainerTab(
                                groupValue: donationToGovernmentId,
                                onChanged: (val) {
                                  setState(() {
                                    donationToGovernmentRadioButtonItem = 12;
                                    donationToGovernmentId = 29;
                                  });
                                },
                                value: 29,
                                timeText: 'Quarterly',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: donationToApprovedCharityId,
                                onChanged: (val) {
                                  setState(() {
                                    donationToApprovedCharityRadioButtonItem =
                                    1;
                                    donationToApprovedCharityId = 27;
                                  });
                                },
                                value: 27,
                                timeText: 'Annually',
                              ),
                              RedioContainerTab(
                                groupValue: donationToGovernmentId,
                                onChanged: (val) {
                                  setState(() {
                                    donationToGovernmentRadioButtonItem = 1;
                                    donationToGovernmentId = 30;
                                  });
                                },
                                value: 30,
                                timeText: 'Annually',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 45.0, vertical: 15),
                    child: Text(
                      'Tax Credits',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextContainer(
                                  childText: 'Installment Payment',
                                  fontSize: 15,
                                  textColor: Colors.black),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TexfeildContainer(
                                controller: installmentPayment,
                                hintText: 'amount',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.white,
                                width: 100,
                                height: 40,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: installmentPaymentId,
                                onChanged: (val) {
                                  setState(() {
                                    installmentPaymentRadioButtonItem = 12;
                                    installmentPaymentId = 32;
                                  });
                                },
                                value: 32,
                                timeText: 'Quarterly',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedioContainerTab(
                                groupValue: installmentPaymentId,
                                onChanged: (val) {
                                  setState(() {
                                    installmentPaymentRadioButtonItem = 1;
                                    installmentPaymentId = 33;
                                  });
                                },
                                value: 33,
                                timeText: 'Annually',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            visibility = true;
                            generatePayableTheQuarter(
                              grossSalary,
                              grossSalaryId,
                              grossSalaryRadioButtonItem,
                              profitsFromBusiness,
                              profitsFromBusinessId,
                              profitsFromBusinessRadioButtonItem,
                              interestIncome,
                              interestIncomeId,
                              interestIncomeRadioButtonItem,
                              dividendIncome,
                              dividendIncomeId,
                              dividendIncomeRadioButtonItem,
                              rentIncome,
                              rentIncomeId,
                              rentIncomeRadioButtonItem,
                              otherIncome,
                              otherIncomeId,
                              otherIncomeRadioButtonItem,
                              professionalServices,
                              professionalServiceId,
                              professionalServiceRadioButtonItem,
                              royalty,
                              royaltyId,
                              royaltyRadioButtonItem,
                              aitWht,
                              aitWhtId,
                              aitWhtRadioButtonItem,
                              donationToApprovedCharity,
                              donationToApprovedCharityId,
                              donationToApprovedCharityRadioButtonItem,
                              donationToGovernment,
                              donationToGovernmentId,
                              donationToGovernmentRadioButtonItem,
                              installmentPayment,
                              installmentPaymentId,
                              installmentPaymentRadioButtonItem,
                              quarterId,
                            );
                          },
                          child: const Text(
                            'Get Computation ',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize:
                            const Size(150, 35), // Set the width and height
                            primary: AppColor
                                .conGreen, // Set the background color to green
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Set the border radius
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add your onPressed code here
                            // Reset all TextEditingControllers to empty string
                            grossSalary.clear();
                            profitsFromBusiness.clear();
                            interestIncome.clear();
                            dividendIncome.clear();
                            rentIncome.clear();
                            otherIncome.clear();
                            healthMedicalExpenses.clear();
                            medicalInsurancePremium.clear();
                            localEducationSelf.clear();
                            localEducationChildren.clear();
                            housingLoanInterest.clear();
                            pensionContribution.clear();
                            purchaseSharedDebentureTreasury.clear();
                            bondsTreasuryBills.clear();
                            solarInstallationCost.clear();
                            donationToApprovedCharity.clear();
                            donationToGovernment.clear();
                            installmentPayment.clear();
                            professionalServices.clear();
                            royalty.clear();
                            aitWht.clear();
                            name.clear();
                            phone.clear();
                            email.clear();

                            // Optionally, reset any other relevant state variables
                            setState(() {
                              // Reset any state variables here if needed
                              visibility = false; // Example of resetting a boolean flag
                            });
                          },
                          child: const Text(
                            'Clear',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(130, 35), // Set the width and height
                            primary: Colors.redAccent, // Set the background color to red
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Set the border radius
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  const Divider(),

                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (visibility == true) ...[
                              Text(
                                'Tax Credits',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: AppColor.conGreen,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),
                              const TextContainer(
                                  childText: 'Total Gains and Profits',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              const TextContainer(
                                  childText: 'Tax Payable',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              const TextContainer(
                                  childText: 'Tax Deducted at Source (TDS)',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              const TextContainer(
                                  childText: 'Self Assessment Payment',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              const TextContainer(
                                  childText: 'Balance Tax Payable/(Refunds',
                                  fontSize: 15,
                                  textColor: Colors.black),
                            ] else ...[
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontLarge(context),
                                  textColor: Colors.green),
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontMe(context),
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontMe(context),
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontMe(context),
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontMe(context),
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontMe(context),
                                  textColor: Colors.black),
                            ]
                          ],
                        ),
                        ),

                        Expanded(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (visibility == true) ...[
                              const Text(
                                'Annual',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),

                              TextContainer(
                                  childText: '$totalGanisAndProfitAnnuallyVar',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$varTotalTaxpayableforTheYear',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$varTdsAnnualy',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$annuallyInstalmentPayment',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$varBalanceTaxPayableForTheYear',
                                  fontSize: 15,
                                  textColor: Colors.black),
                            ] else ...[
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontMe(context),
                                  textColor: Colors.black),
                            ],


                          ],
                        ),
                        ),

                        Expanded(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (visibility == true) ...[
                              const Text(
                                'Quarter',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold),
                              ),

                              TextContainer(
                                  childText: '$totalGanisAndProfitQuartlyVar',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$varTotalTaxpayableforTheQuarter',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$varTdsQuartly',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$quartlyInstalmentPayment',
                                  fontSize: 15,
                                  textColor: Colors.black),
                              TextContainer(
                                  childText: '$varBalanceTaxPayableForTheQuarter',
                                  fontSize: 15,
                                  textColor: Colors.black),
                            ] else ...[
                              TextContainer(
                                  childText: '',
                                  fontSize: getFontMe(context),
                                  textColor: Colors.black),
                            ],

                          ],
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 25,)

          ],
        ),
      ),
    );
  }

  Future<bool> generatePayableTheQuarter(
      TextEditingController grossSalary, //
      int grossSalaryId, //
      int grossSalaryValue, //
      TextEditingController profitsFromBusiness, //
      int profitsFromBusinessId, //
      int profitsFromBusinessValue, //
      TextEditingController interestIncome, //
      int interestIncomeId, //
      int interestIncomeValue, //
      TextEditingController dividendIncome, //
      int dividendIncomeId, //
      int dividendIncomeValue, //
      TextEditingController rentIncome, //
      int rentIncomeId, //
      int rentIncomeValue, //
      TextEditingController otherIncome, //
      int otherIncomeId, //
      int otherIncomeValue, //
      TextEditingController professiionalServices, //
      int professiionalServiceId, //
      int professiionalServiceValue,
      TextEditingController royalty, //
      int royaltyId, //
      int royaltyValue,
      TextEditingController aitWht, //
      int aitWhtId, //
      int aitWhtValue,
      TextEditingController donationToApprovedCharity, //
      int donationToApprovedCharityId, //
      int donationToApprovedCharityValue, //
      TextEditingController donationToGovernment, //
      int donationToGovernmentId, //
      int donationToGovernmentValue, //
      TextEditingController instament,
      int instamentId,
      int instamentValue,
      int quarter, //
      ) async {
    annualGrossSalary = 0;
    monthlyGrossSalary = 0;
    annualProfitsFromBusiness = 0;
    annualInterestIncome = 0;
    annualDividendIncome = 0;
    annualRentIncome = 0;
    annualProfessionalService = 0;
    annualRoyalty = 0;
    annualAitWht = 0;
    annualOtherIncome = 0;
    annualhealthMedicalExpenses = 0;
    annualmedicalInsurancePremium = 0;
    annuallocalEducationSelf = 0;
    annuallocalEducationChildren = 0;
    annualhousingLoanInterest = 0;
    annualpensionContribution = 0;
    annualpurchaseSharedDebentureTreasury = 0;
    annualbondsTreasuryBills = 0;
    annualsolarInstallationCost = 0;
    annualdonationToApprovedCharity = 0;
    annualdonationToGovernment = 0;
    finalInstalment = 0;
    finalInstalmentQuartly = 0;
    finalInstalmentAnnually = 0;
    personalRelief = 1200000;
    rentIncomeDeduction = 0;
    totalDiffrentForDonation = 0;
    finalValueForDonationToApprovedCharity = 0;
    finalValueFordonationToGovernment = 0;
    expensesReliefTotal = 0;
    balanceTaxPayble = 0;
    taxableIncome = 0;
    finalTaxable = "";
    totalGanisAndProfitAnnuallyVar = "";
    totalGanisAndProfitQuartlyVar = "";
    taxPaybleQuartly = "";
    taxPaybleAnnualy = "";
    taxDeductedAtSourceAnnualy = "";
    taxDeductedAtSourceQuartly = "";
    balanceTaxPaybleFortheAnnually = "";
    balanceTaxPaybleFortheQuarter = "";
    quartlyInstalmentPayment = "";
    annuallyInstalmentPayment = "";
    // 01
    if (grossSalary.text != "") {
      if (grossSalaryId != 0) {
        var a = grossSalary.text;
        String newStr = a.replaceAll(",", "");
        annualGrossSalary = double.parse('$newStr') * grossSalaryValue;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select gross salary type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualGrossSalary = 0;
    }
    setState(() {
      monthlyGrossSalary = annualGrossSalary / 12;
    });
    if (log) {
      grossSalaryQuartly = formatter.format(annualGrossSalary / 4);
      grossSalaryAnnualy = formatter.format(annualGrossSalary);

      print(
          "Annual gross salary ===> : " + formatter.format(annualGrossSalary));
    }

    // 02
    if (profitsFromBusiness.text != "") {
      if (profitsFromBusinessId != 0) {
        var b = profitsFromBusiness.text;
        String newStr = b.replaceAll(",", "");
        annualProfitsFromBusiness =
            double.parse('$newStr') * profitsFromBusinessValue;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select profits from business value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualProfitsFromBusiness = 0;
    }

    if (log) {
      print("Annual Profits From Business ===> : " +
          formatter.format(annualProfitsFromBusiness));
    }
    // 03
    if (interestIncome.text != "") {
      if (interestIncomeId != 0) {
        var c = interestIncome.text;
        String newStr = c.replaceAll(",", "");
        annualInterestIncome = double.parse('$newStr') * interestIncomeValue;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select interest income value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualInterestIncome = 0;
    }

    if (log) {
      print("Annual Interest Income ===> : " +
          formatter.format(annualInterestIncome));
    }
    // 04
    if (dividendIncome.text != "") {
      if (dividendIncomeId != 0) {
        var d = dividendIncome.text;
        String newStr = d.replaceAll(",", "");
        annualDividendIncome = double.parse('$newStr') * dividendIncomeValue;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select dividend income value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualDividendIncome = 0;
    }

    if (log) {
      print("Annual Dividend Income ===> : " +
          formatter.format(annualDividendIncome));
    }
    // 05
    if (rentIncome.text != "") {
      if (rentIncomeId != 0) {
        var e = rentIncome.text;
        String newStr = e.replaceAll(",", "");
        double totalRentincome = double.parse('$newStr') * rentIncomeValue;
        rentIncomeDeduction = totalRentincome * 0.25;
        annualRentIncome = totalRentincome;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select rent income value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualRentIncome = 0;
    }

    if (log) {
      print("Annual Rent Income ===> : " + formatter.format(annualRentIncome));
      // print("Annual Rent Income Tax (10% If monthly above 100000) ===> : " +
      //     formatter.format(annualRentIncomeTax));
    }
    // 06
    if (otherIncome.text != "") {
      if (otherIncomeId != 0) {
        var f = otherIncome.text;
        String newStr = f.replaceAll(",", "");
        annualOtherIncome = double.parse('$newStr') * otherIncomeValue;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select other income value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualOtherIncome = 0;
    }

    if (log) {
      print(
          "Annual Other Income ===> : " + formatter.format(annualOtherIncome));
    }
//07
    if (professiionalServices.text != "") {
      if (professionalServiceId != 0) {
        var ee = professiionalServices.text;
        String newStr = ee.replaceAll(",", "");
        double totalprofessionalServices =
            double.parse('$newStr') * professiionalServiceValue;
        annualProfessionalService = totalprofessionalServices;
        // rentIncomeDeduction = totalRentincome * 0.25;
        //  annualRentIncome = totalRentincome;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select rent income value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualProfessionalService = 0;
    }

    if (log) {
      print("Annual Professional Services Income ===> : " +
          formatter.format(annualProfessionalService));
    }

    //08
    if (royalty.text != "") {
      if (royaltyId != 0) {
        var er = royalty.text;
        String newStr = er.replaceAll(",", "");
        double totalroyalty = double.parse('$newStr') * royaltyValue;
        annualRoyalty = totalroyalty;
        annualRoyaltyTax = annualRoyalty * 0.14;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select rent income value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualRoyalty = 0;
    }

    if (log) {
      print("Annual Royalty Income ===> : " + formatter.format(annualRoyalty));
      print("Annual Royalty Income (14%) ===> : " +
          formatter.format(annualRoyaltyTax));
    }

    // 16
    if (donationToApprovedCharity.text != "") {
      if (donationToApprovedCharityId != 0) {
        var p = donationToApprovedCharity.text;
        String newStr = p.replaceAll(",", "");
        annualdonationToApprovedCharity =
            double.parse('$newStr') * donationToApprovedCharityValue;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select donation to approved charity value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualdonationToApprovedCharity = 0;
    }

    if (log) {
      print("Annual Donation To Approved Charity ===> : " +
          formatter.format(annualdonationToApprovedCharity));
    }
    // 17
    if (donationToGovernment.text != "") {
      if (donationToGovernmentId != 0) {
        var q = donationToGovernment.text;
        String newStr = q.replaceAll(",", "");
        annualdonationToGovernment =
            double.parse('$newStr') * donationToGovernmentValue;
      } else {
        Fluttertoast.showToast(
          msg: "Need to select donation to government value type",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.TOP,
        );
      }
    } else {
      annualdonationToGovernment = 0;
    }

    if (log) {
      print("Annual Donation To Government ===> : " +
          formatter.format(annualdonationToGovernment));
    }

    if (instament.text != "") {
      if (installmentPaymentId != 0) {
        var s = instament.text;
        String newStr = s.replaceAll(",", "");

        finalInstalment = double.parse('$newStr') * instamentValue;

        quartlyInstalmentPayment = formatter.format(finalInstalment / 4);
        annuallyInstalmentPayment = formatter.format(finalInstalment);
      }
    } else {
      finalInstalment = 0;
    }

    if (log) {
      print("Annual Installment Payment ===> : " +
          formatter.format(finalInstalment));
    }

    if (aitWht.text != "") {
      if (aitWhtId != 0) {
        var sait = aitWht.text;
        String newStr = sait.replaceAll(",", "");

        annualAitWht = double.parse('$newStr') * aitWhtValue;
      }
    } else {
      annualAitWht = 0;
    }

    if (log) {
      print("Annual AIT WHT: ===> : " + formatter.format(annualAitWht));
      print("======================================");
    }

    totalGanisAndProfitAnnually = (annualGrossSalary +
        annualProfitsFromBusiness +
        annualInterestIncome +
        annualDividendIncome +
        annualRentIncome +
        annualProfessionalService +
        annualRoyalty +
        annualOtherIncome);

    totalGanisAndProfitAnnuallyVar =
        formatter.format(totalGanisAndProfitAnnually);

    totalGanisAndProfitQuartly = totalGanisAndProfitAnnually / 4;

    totalGanisAndProfitQuartlyVar =
        formatter.format(totalGanisAndProfitQuartly);

    double fQ1 = 0;
    double fQ2 = 0;
    double fQ3 = 0;
    double fQ4 = 0;
    if (balanceTaxPayble > 0) {
      fQ1 = (balanceTaxPayble / 4).roundToDouble();
      setState(() {
        quarterTaxPayble = formatter.format(fQ1);
      });
      if (log) {
        //  print("Q1 : " + formatter.format(fQ1));
        print("Q1 Tax Credit : " + formatter.format(fQ1));
      }

      fQ2 = (balanceTaxPayble - fQ1) / 3;
      setState(() {
        quarterTaxPayble = formatter.format(fQ2.roundToDouble());
      });
      if (log) {
        print("Q2 Tax Credit  : " + formatter.format(fQ2.roundToDouble()));
      }

      fQ3 = (balanceTaxPayble - (fQ1 + fQ2)) / 2;
      setState(() {
        quarterTaxPayble = formatter.format(fQ3.roundToDouble());
      });
      if (log) {
        print("Q3 Tax Credit : " + formatter.format(fQ3.roundToDouble()));
      }

      fQ4 = balanceTaxPayble - (fQ1 + fQ2 + fQ3);
      setState(() {
        quarterTaxPayble = formatter.format((fQ4.roundToDouble()));
      });
      if (log) {
        print("Q4 Tax Credit : " + formatter.format((fQ4.roundToDouble())));
      }

      double monthlyTaxPayable = balanceTaxPayble / 12;

      double balanceTaxPayableAfterAPIT =
          monthlyTaxPayable - (finalInstalment / 12);
      setState(() {
        monthlyTaxPayableVar =
            formatter.format((monthlyTaxPayable.roundToDouble()));

        if (balanceTaxPayableAfterAPIT > 0) {
          balanceTaxPayableAfterAPITVar = formatter
              .format((balanceTaxPayble.roundToDouble() - finalInstalment));
        } else {
          balanceTaxPayableAfterAPITVar = "Error";
        }
      });
    } else {
      setState(() {
        quarterTaxPayble = '0.00';
        monthlyTaxPayableVar = '0.00';
        balanceTaxPayableAfterAPITVar = "0.00";
      });
    }

    if (log) {
      print("================ APIT ======================");
    }
    double monthlyApit = 0;
    double qurterApit = 0;
    double balanceTaxPayForQur = 0;
    if (annualGrossSalary <= 1200000) {
      setState(() {
        monthlyAPIT = "APIT NOT APPLICABLE";
        apitDeducted = "0.00";
      });

      if (log) {
        monthlyApit = 0;

        print("================ APIT NOT APPLICABLE ===================");
      }
    } else {
      monthlyApit = 0;
      double monthlySalary = annualGrossSalary / 12;
      double apitRelief = 100000;

      if (log) {
        print("APIT Relief ===> : " + formatter.format((apitRelief)));
      }

      if (monthlySalary <= 141667) {
        double regular_6 = monthlySalary * 0.06;
        monthlyApit = regular_6 - 6000;
        qurterApit = monthlyApit * 3;
        balanceTaxPayForQur = fQ1 - qurterApit;
        setState(() {
          apitDeducted = formatter.format((6000));
        });
        if (log) {
          print("* 6% of regular monthly profits ===> : " +
              formatter.format(regular_6));
          print("* Deduct 6000 monthly profits ");
          print("* Monthly APIT ===> : " + formatter.format(monthlyApit));
          print("* Quartaly APIT ===> : " + formatter.format(qurterApit));
          print("* Balance Tax Payable For the Quarter  ===> : " +
              formatter.format(balanceTaxPayForQur));
        }
      } else if (monthlySalary > 141667 && monthlySalary <= 183333) {
        double regular_12 = monthlySalary * 0.12;
        monthlyApit = regular_12 - 14500;
        qurterApit = monthlyApit * 3;
        balanceTaxPayForQur = fQ1 - qurterApit;
        setState(() {
          apitDeducted = formatter.format((14500));
        });
        if (log) {
          print("* 12% of regular monthly profits ===> : " +
              formatter.format(regular_12));
          print("* Deduct 14,500 monthly profits ");
          print("* Monthly APIT ===> : " + formatter.format(monthlyApit));
          print("* Quartaly APIT ===> : " + formatter.format(qurterApit));
          print("* Balance Tax Payable For the Quarter  ===> : " +
              formatter.format(balanceTaxPayForQur));
        }
      } else if (monthlySalary > 183333 && monthlySalary <= 225000) {
        double regular_18 = monthlySalary * 0.18;
        monthlyApit = regular_18 - 25500;
        qurterApit = monthlyApit * 3;
        balanceTaxPayForQur = fQ1 - qurterApit;
        setState(() {
          apitDeducted = formatter.format((25500));
        });

        if (log) {
          print("* 18% of regular monthly profits ===> : " +
              formatter.format(regular_18));
          print("* Deduct 25,500 monthly profits ");
          print("* Monthly APIT ===> : " + formatter.format(monthlyApit));
          print("* Quartaly APIT ===> : " + formatter.format(qurterApit));
          print("* Balance Tax Payable For the Quarter  ===> : " +
              formatter.format(balanceTaxPayForQur));
        }
      } else if (monthlySalary > 225000 && monthlySalary <= 266667) {
        double regular_24 = monthlySalary * 0.24;
        monthlyApit = regular_24 - 39000;
        qurterApit = monthlyApit * 3;
        balanceTaxPayForQur = fQ1 - qurterApit;
        setState(() {
          apitDeducted = formatter.format((39000));
        });
        if (log) {
          print("* 24% of regular monthly profits ===> : " +
              formatter.format(regular_24));
          print("* Deduct 39,000 monthly profits ");
          print("* Monthly APIT ===> : " + formatter.format(monthlyApit));
          print("* Quartaly APIT ===> : " + formatter.format(qurterApit));
          print("* Balance Tax Payable For the Quarter  ===> : " +
              formatter.format(balanceTaxPayForQur));
        }
      } else if (monthlySalary > 266667 && monthlySalary <= 308333) {
        double regular_30 = monthlySalary * 0.30;
        monthlyApit = regular_30 - 55000;
        qurterApit = monthlyApit * 3;
        balanceTaxPayForQur = (fQ1 - qurterApit);
        setState(() {
          apitDeducted = formatter.format((55000));
        });
        if (log) {
          print("* 30% of regular monthly profits ===> : " +
              formatter.format(regular_30));
          print("* Deduct 55,000 monthly profits ");
          print("* Monthly APIT ===> : " + formatter.format(monthlyApit));
          print("* Quartaly APIT ===> : " + formatter.format(qurterApit));
          print("* Balance Tax Payable For the Quarter  ===> : " +
              formatter.format(balanceTaxPayForQur));
        }
      } else if (monthlySalary > 308333) {
        double regular_36 = monthlySalary * 0.36;
        monthlyApit = regular_36 - 73500;
        qurterApit = monthlyApit * 3;
        balanceTaxPayForQur = fQ1 - qurterApit;
        setState(() {
          apitDeducted = formatter.format((73500));
        });
        if (log) {
          print("* 36% of regular monthly profits ===> : " +
              formatter.format(regular_36));
          print("* Deduct 73,500 monthly profits ");
          print("* Monthly APIT ===> : " + formatter.format(monthlyApit));
          print("* Quartaly APIT ===> : " + formatter.format(qurterApit));
          print("* Balance Tax Payable For the Quarter  ===> : " +
              formatter.format(
                  balanceTaxPayForQur)); //***********************00000000000000000000 */
        }
      }
      setState(() {
        monthlyAPIT = formatter.format(monthlyApit);
        taxPaybleQuartly = formatter
            .format((monthlyApit * 3) + ((annualInterestIncomeDeduction / 4)));
        taxPaybleAnnualy = formatter
            .format((monthlyApit * 12) + annualInterestIncomeDeduction);

        double balanceTaxPayableForTheQuarter =
            (monthlyApit * 3) + (finalInstalment / 4) - (monthlyApit * 3);

        if ((monthlyApit * 3) < ((monthlyApit * 3) + (finalInstalment / 4))) {
          balanceTaxPaybleFortheQuarter =
              '(-' + formatter.format(balanceTaxPayableForTheQuarter) + ')';
        } else {
          balanceTaxPaybleFortheQuarter =
              formatter.format(balanceTaxPayableForTheQuarter);
        }
//=============================================================================\\s
        double balanceTaxPayableForTheAnnually =
            (monthlyApit) + (finalInstalment) - (monthlyApit);

        if ((monthlyApit) < ((monthlyApit) + (finalInstalment))) {
          balanceTaxPaybleFortheAnnually =
              '(-' + formatter.format(balanceTaxPayableForTheAnnually) + ')';
        } else {
          balanceTaxPaybleFortheAnnually =
              formatter.format(balanceTaxPayableForTheAnnually);
        }
      });

      annualTaxCredit = annualDividendIncomeDeduction +
          annualInterestIncomeDeduction +
          monthlyApit +
          finalInstalment;

      if (log) {
        // print("Annual Tax Credit ===> : " + formatter.format(annualTaxCredit));
        print("=================  ===============================");
      }
    }
    print("***** Total Ganis And Profit Annuall ===> : " +
        formatter.format(totalGanisAndProfitAnnually));

    print("***** Total Ganis And Profit Quartly ===> : " +
        formatter.format(totalGanisAndProfitQuartly));
    //print("***** Monthly APIT ===> : " + formatter.format(monthlyApit));
    print("***** Annual APIT ===> : " + formatter.format(monthlyApit * 12));
    print("***** Quartaly APIT ===> : " + formatter.format(qurterApit));

    annualInterestIncomeDeduction = (annualInterestIncome * 0.05);
    print("***** WHT 5% Interest Income Annualy ===> : " +
        formatter.format(annualInterestIncomeDeduction));
    print("***** WHT 5% Interest Income Quartaly ===> : " +
        formatter.format(annualInterestIncomeDeduction / 4));

    double wht15dividendIncome = annualDividendIncome * 0.15;

    print("***** WHT 15% Dividend Income Annualy ===> : " +
        formatter.format(wht15dividendIncome));
    print("***** WHT 15% Dividend Income Quartaly ===> : " +
        formatter.format(wht15dividendIncome / 4));

    if ((annualRentIncome / 12) > 100000) {
      annualRentIncomeTax = annualRentIncome * 0.1;
      print(
          "***** WHT 10% Rent Income Annualy (If monthly rent above 100000) ===> : " +
              formatter.format(annualRentIncomeTax));
      print(
          "***** WHT 10% Rent Income Quartaly (If monthly rent above 100000) ===> : " +
              formatter.format(annualRentIncomeTax / 4));
    } else {
      annualRentIncomeTax = 0;
      print(
          "***** WHT 10% Rent Income Annualy (If monthly rent below 100000) ===> : " +
              formatter.format(annualRentIncomeTax));
      print(
          "***** WHT 10% Rent Income Quartaly (If monthly rent below 100000) ===> : " +
              formatter.format(annualRentIncomeTax / 4));
    }

    double wht5ProfessionalService = 0;

    if ((annualProfessionalService / 12) > 100000) {
      wht5ProfessionalService = annualProfessionalService * 0.05;
    }

    print(
        "***** WHT 5% Professional Service Annualy (If monthly amount above 100000) ===> : " +
            formatter.format(wht5ProfessionalService));

    print(
        "***** WHT 5% Professional Service Quartaly (If monthly amount 100000) ===> : " +
            formatter.format(wht5ProfessionalService / 4));

    double wht14Royalty = annualRoyalty * 0.14;

    print("***** WHT 14% Royalty Annualy ===> : " +
        formatter.format(wht14Royalty));

    print("***** WHT 14% Royalty  Quartaly ===> : " +
        formatter.format(wht14Royalty / 4));

    double tdsAnnualy = (monthlyApit * 12) +
        annualInterestIncomeDeduction +
        wht15dividendIncome +
        annualRentIncomeTax +
        wht5ProfessionalService +
        wht14Royalty;

    print("***** TDS Annualy ===> : " + formatter.format(tdsAnnualy));

    double tdsAQuartly = qurterApit +
        (annualInterestIncomeDeduction / 4) +
        (wht15dividendIncome / 4) +
        (annualRentIncomeTax / 4) +
        (wht5ProfessionalService / 4) +
        (wht14Royalty / 4);

    print("***** TDS Quartly ===> : " + formatter.format(tdsAQuartly));

    varTdsAnnualy = formatter.format(tdsAnnualy);
    varTdsQuartly = formatter.format(tdsAQuartly);

    double grossTaxPayableAnnual = totalGanisAndProfitAnnually -
        (annualDividendIncome + annualRentIncome) +
        (annualRentIncome * 0.75);

    print(
        "***** Gross Taxable Income Before Tax free Allowence Annual ===> : " +
            formatter.format(grossTaxPayableAnnual));
    print(
        "***** Gross Taxable Income Before Tax free Allowence Quartly ===> : " +
            formatter.format(grossTaxPayableAnnual / 4));

    double taxableIncomeAnnualy = (grossTaxPayableAnnual - 1200000);

    print("***** Taxable Income Annualy (Before Donation) ===> : " +
        formatter.format(taxableIncomeAnnualy));
    print("***** Taxable Income Quartly (Before Donation) ===> : " +
        formatter.format(taxableIncomeAnnualy / 4));

    //*********************** Donation Formula ******************************\\
    print("================= Donation ===============================");
//******* NEW TAX LAW */
    if (taxableIncomeAnnualy > 0) {
      double donationApplicableAmount = taxableIncomeAnnualy;
      //   totalDifferent = 0;
      //   finalValueForDonationToApprovedCharity = 0;
      // } else {
      //   totalDifferent = aa;
      double totalForDonationApplicableAmount3 =
      (donationApplicableAmount / 3).roundToDouble();

      //   if (log) {
      print("***** Donation applicable amount ****** " +
          formatter.format(donationApplicableAmount));

      print("***** (Donation applicable amount)/3 ****** " +
          formatter.format(totalForDonationApplicableAmount3));
      //   }

      if (totalForDonationApplicableAmount3 != 0) {
        if (totalForDonationApplicableAmount3 < 75000) {
          if (annualdonationToApprovedCharity <
              totalForDonationApplicableAmount3) {
            finalValueForDonationToApprovedCharity =
                annualdonationToApprovedCharity;
          } else {
            finalValueForDonationToApprovedCharity =
                totalForDonationApplicableAmount3;
          }
        } else {
          if (annualdonationToApprovedCharity > 75000) {
            finalValueForDonationToApprovedCharity = 75000;
          } else {
            finalValueForDonationToApprovedCharity =
                annualdonationToApprovedCharity;
          }
        }
      } else {
        finalValueForDonationToApprovedCharity = 0;
      }

      print("***** Taxable Donation to Approved Charity ****** " +
          formatter.format(finalValueForDonationToApprovedCharity));

      taxableIncomeAnnualyAfterDonation =
          taxableIncomeAnnualy - finalValueForDonationToApprovedCharity;
      print("***** Taxable Income Annualy (After Donation) ===> : " +
          formatter.format(taxableIncomeAnnualyAfterDonation));
      print("***** Taxable Income Quartly (After Donation) ===> : " +
          formatter.format(taxableIncomeAnnualyAfterDonation / 4));

      taxableIncomeAnnualyAfterGovenmentDonation =
          taxableIncomeAnnualyAfterDonation - annualdonationToGovernment;

      if (taxableIncomeAnnualyAfterGovenmentDonation > 0) {
        print(
            "***** Taxable Income Annualy (After Govenment Donation) ===> : " +
                formatter.format(taxableIncomeAnnualyAfterGovenmentDonation));
        print(
            "***** Taxable Income Quartly (After Govenment Donation) ===> : " +
                formatter
                    .format(taxableIncomeAnnualyAfterGovenmentDonation / 4));
      } else {
        taxableIncomeAnnualyAfterGovenmentDonation = 0;
      }
    }

    double taxOnBalanceTaxableIncome = 0;
    double aaa_6 = 0;
    double bbb_12 = 0;
    double ddd_18 = 0;
    double eee_24 = 0;
    double fff_30 = 0;
    double ggg_36 = 0;

    if (taxableIncomeAnnualyAfterGovenmentDonation <= 0) {
      taxOnBalanceTaxableIncome = 0;
      print("First slab @ 6%: " + '0');
      print("Second slab @ 12% : " + '0');
      print("Third slab @ 18% : " + '0');
      print("Forth slab @ 24% : " + '0');
      print("Fifth slab @ 30% : " + '0');
      print("On balance @ 36% : " + '0');
      print("******** No Taxpayble ********");
      print("======================================");
    } else {
      if (taxableIncomeAnnualyAfterGovenmentDonation <= 500000) {
        aaa_6 = taxableIncomeAnnualyAfterGovenmentDonation * 0.06;
        taxOnBalanceTaxableIncome = aaa_6;
        if (log) {
          print("* First slab @ 6% ===> : " + formatter.format(aaa_6));
        }
      } else if (taxableIncomeAnnualyAfterGovenmentDonation > 500000 &&
          taxableIncomeAnnualyAfterGovenmentDonation <= 1000000) {
        aaa_6 = 500000 * 0.06;
        bbb_12 = (taxableIncomeAnnualyAfterGovenmentDonation - 500000) * 0.12;
        taxOnBalanceTaxableIncome = aaa_6 + bbb_12;
        if (log) {
          print("* First slab @ 6% ===> : " + formatter.format(aaa_6));
          print("* Second slab @ 12% ===> : " + formatter.format(bbb_12));
        }
      } else if (taxableIncomeAnnualyAfterGovenmentDonation > 1000000 &&
          taxableIncomeAnnualyAfterGovenmentDonation <= 1500000) {
        aaa_6 = 500000 * 0.06;
        bbb_12 = 500000 * 0.12;
        ddd_18 = (taxableIncomeAnnualyAfterGovenmentDonation - 1000000) * 0.18;
        taxOnBalanceTaxableIncome = aaa_6 + bbb_12 + ddd_18;
        if (log) {
          print("* First slab @ 6% ===> : " + formatter.format(aaa_6));
          print("* Second slab @ 12% ===> : " + formatter.format(bbb_12));
          print("* Third slab @ 18% ===> : " + formatter.format(ddd_18));
        }
      } else if (taxableIncomeAnnualyAfterGovenmentDonation > 1500000 &&
          taxableIncomeAnnualyAfterGovenmentDonation <= 2000000) {
        aaa_6 = 500000 * 0.06;
        bbb_12 = 500000 * 0.12;
        ddd_18 = 500000 * 0.18;
        eee_24 = (taxableIncomeAnnualyAfterGovenmentDonation - 1500000) * 0.24;
        taxOnBalanceTaxableIncome = aaa_6 + bbb_12 + ddd_18 + eee_24;
        if (log) {
          print("* First slab @ 6% ===> : " + formatter.format(aaa_6));
          print("* Second slab @ 12% ===> : " + formatter.format(bbb_12));
          print("* Third slab @ 18% ===> : " + formatter.format(ddd_18));
          print("* Fourth slab @ 24% ===> : " + formatter.format(eee_24));
        }
      } else if (taxableIncomeAnnualyAfterGovenmentDonation > 2000000 &&
          taxableIncomeAnnualyAfterGovenmentDonation <= 2500000) {
        aaa_6 = 500000 * 0.06;
        bbb_12 = 500000 * 0.12;
        ddd_18 = 500000 * 0.18;
        eee_24 = 500000 * 0.24;
        fff_30 = (taxableIncomeAnnualyAfterGovenmentDonation - 2000000) * 0.30;
        taxOnBalanceTaxableIncome = aaa_6 + bbb_12 + ddd_18 + eee_24 + fff_30;
        if (log) {
          print("* First slab @ 6% ===> : " + formatter.format(aaa_6));
          print("* Second slab @ 12% ===> : " + formatter.format(bbb_12));
          print("* Third slab @ 18% ===> : " + formatter.format(ddd_18));
          print("* Fourth slab @ 24% ===> : " + formatter.format(eee_24));
          print("* Fifth slab @ 30% ===> : " + formatter.format(fff_30));
        }
      } else if (taxableIncomeAnnualyAfterGovenmentDonation > 2500000) {
        aaa_6 = 500000 * 0.06;
        bbb_12 = 500000 * 0.12;
        ddd_18 = 500000 * 0.18;
        eee_24 = 500000 * 0.24;
        fff_30 = 500000 * 0.30;
        ggg_36 = (taxableIncomeAnnualyAfterGovenmentDonation - 2500000) * 0.36;
        taxOnBalanceTaxableIncome =
            aaa_6 + bbb_12 + ddd_18 + eee_24 + fff_30 + ggg_36;
        if (log) {
          print("* First slab @ 6% ===> : " + formatter.format(aaa_6));
          print("* Second slab @ 12% ===> : " + formatter.format(bbb_12));
          print("* Third slab @ 18% ===> : " + formatter.format(ddd_18));
          print("* Fourth slab @ 24% ===> : " + formatter.format(eee_24));
          print("* Fifth slab @ 30% ===> : " + formatter.format(fff_30));
          print("* On balance slab 36%  ===> : " + formatter.format(ggg_36));
        }
      }
    }

    double totalTaxpayableforTheYear =
        taxOnBalanceTaxableIncome + wht15dividendIncome;

    print("***** Total Taxpayable for the year (Before Dividend)  ===> : " +
        formatter.format(taxOnBalanceTaxableIncome));

    print("***** Total Taxpayable for the quarter (Before Dividend)  ===> : " +
        formatter.format(taxOnBalanceTaxableIncome / 4));

    print("***** Total Taxpayable for the year (With Dividend) ===> : " +
        formatter.format(totalTaxpayableforTheYear));

    print("***** Total Taxpayable for the quarter (With Dividend) ===> : " +
        formatter.format(totalTaxpayableforTheYear / 4));

    varTotalTaxpayableforTheYear = formatter.format(totalTaxpayableforTheYear);
    varTotalTaxpayableforTheQuarter =
        formatter.format(totalTaxpayableforTheYear / 4);

    double balanceTaxPayable =
        totalTaxpayableforTheYear - (tdsAnnualy + finalInstalment);

    print("***** Balance Taxpayable for the year ===> : " +
        formatter.format(balanceTaxPayable));

    print("***** Balance Taxpayable for the quarter ===> : " +
        formatter.format(balanceTaxPayable / 4));

    if (balanceTaxPayable < 0) {
      var blceTxPayaaa = formatter.format(balanceTaxPayable);
      var outaaa = blceTxPayaaa.replaceAll("-", "");

      var blceTxPaybbb = formatter.format(balanceTaxPayable / 4);
      var outbbb = blceTxPaybbb.replaceAll("-", "");

      varBalanceTaxPayableForTheYear = '(' + outaaa + ')';
      varBalanceTaxPayableForTheQuarter = '(' + outbbb + ')';
    } else {
      varBalanceTaxPayableForTheYear = formatter.format(balanceTaxPayable);
      varBalanceTaxPayableForTheQuarter =
          formatter.format(balanceTaxPayable / 4);
    }
    return Future.value(true);
  }
}
