// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:smart_ledger_ai/GettingStarted/5_Supplier.dart';
import 'package:smart_ledger_ai/GettingStarted/6_Bank.dart';
import 'package:smart_ledger_ai/GettingStarted/7_BranchDivision.dart';
import 'package:smart_ledger_ai/Masterlist/1_CustomerImportImage.dart';
import 'package:smart_ledger_ai/Dashboard/MainDashboard.dart';
import 'package:smart_ledger_ai/PurchasesAPV/1_PurchasesAPV.dart';
import 'package:smart_ledger_ai/SettingsPreferences/DefaultBackup1.dart';
import 'package:smart_ledger_ai/SettingsPreferences/DefaultBackup.dart';
import 'package:smart_ledger_ai/SettingsPreferences/test_test.dart';
import 'package:smart_ledger_ai/SettingsPreferences/1_SettingsPreferences.dart';

import 'Registration/LoginScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiStepFormPage(),
    );
  }
}
