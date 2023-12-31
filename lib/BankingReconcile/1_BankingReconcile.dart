import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ledger_ai/BankingReconcile/2_BankReconcile.dart';

class BankingReconcile extends StatefulWidget {
  const BankingReconcile({super.key});

  @override
  State<BankingReconcile> createState() => _BankingReconcile();
}

class _BankingReconcile extends State<BankingReconcile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actions: <Widget>[
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 45.0),
                    child: Container(
                      width: 130,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C3A76),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownButton<String>(
                        onChanged: (String? newValue) {
                          // Handle dropdown value change
                        },
                        items: <String>[
                          'Option 1',
                          'Option 2',
                          'Option 3',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFF010A10),
                          fontSize: 10.0,
                        ),
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        icon: Transform.translate(
                          offset: const Offset(
                              -2, -2), // Adjust the Y offset as needed
                          child: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ),
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Categories',
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.0,
                    top: 0.0, // Adjust this value to control overlap amount
                    child: Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Colors.black, // Set the border color
                          width: 0.1, // Set the border width
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.0),
                              decoration: InputDecoration(
                                  // hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 10.0),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 13.0)),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    color: Color(0xFF040404),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF040404),
                        width: 2.0, // Adjust the border width as needed
                      ),
                    ),
                    child: const Icon(
                      Icons.question_mark,
                      size: 20,
                      color: Color(0xFF040404),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                    color: Color(0xFF040404),
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: Text(
                'Which account do you want to reconcile?',
                style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF010A10),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Account',
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFF010A10),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0x1a010a10)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: Container(),
                    icon: const Icon(Icons.arrow_drop_down,
                        color: Color(0x1a010a10)),
                    items: <String>[
                      'Option 1',
                      'Option 2',
                      'Option 3',
                      'Option 4',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Text(value),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle selection
                    },
                    hint: Text(
                      'Cash and Equivalents',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromARGB(255, 96, 100, 102),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
            child: Text(
              'Add the following information',
              style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF010A10),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 25.0, right: 5.0),
                child: Text(
                  'Beginning balance',
                  style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF010A10),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 5.0, right: 25.0),
                child: Text(
                  '0.00',
                  style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xFF010A10),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Ending Balance',
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFF010A10),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0x1a010a10)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: Container(),
                    icon: const Icon(Icons.arrow_drop_down,
                        color: Color(0x1a010a10)),
                    items: <String>[
                      'Option 1',
                      'Option 2',
                      'Option 3',
                      'Option 4',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Text(value),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle selection
                    },
                    hint: Text(
                      'Cash and Equivalents',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromARGB(255, 96, 100, 102),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Ending Date',
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xFF010A10),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0x1a010a10)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: Container(),
                    icon: const Icon(Icons.arrow_drop_down,
                        color: Color(0x1a010a10)),
                    items: <String>[
                      'Option 1',
                      'Option 2',
                      'Option 3',
                      'Option 4',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Text(value),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle selection
                    },
                    hint: Text(
                      'Cash and Equivalents',
                      style: GoogleFonts.plusJakartaSans(
                        color: const Color.fromARGB(255, 96, 100, 102),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
            child: Text(
              'Enter the service charge or interest earned, if necessary',
              style: GoogleFonts.plusJakartaSans(
                  color: const Color.fromARGB(255, 96, 100, 102),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Date',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(),
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Color(0x1a010a10)),
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                              'Option 4',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Handle selection
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Service Charge',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '0.00',
                              hintStyle: GoogleFonts.plusJakartaSans(
                                color: const Color(0xFF010A10),
                                fontSize: 10.0,
                              ),
                              border: InputBorder.none,
                            ),
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF010A10),
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Expense Account',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(),
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Color(0x1a010a10)),
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                              'Option 4',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Handle selection
                            },
                            hint: Text(
                              'Bank Charge',
                              style: GoogleFonts.plusJakartaSans(
                                color: const Color.fromARGB(255, 96, 100, 102),
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Date',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(),
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Color(0x1a010a10)),
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                              'Option 4',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Handle selection
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Interest Earned',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '0.00',
                              hintStyle: GoogleFonts.plusJakartaSans(
                                color: const Color(0xFF010A10),
                                fontSize: 10.0,
                              ),
                              border: InputBorder.none,
                            ),
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF010A10),
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 25.0, right: 25.0, bottom: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Interest Account',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF010A10),
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color(0x1a010a10)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(),
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Color(0x1a010a10)),
                            items: <String>[
                              'Option 1',
                              'Option 2',
                              'Option 3',
                              'Option 4',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Handle selection
                            },
                            hint: Text(
                              'Bank Charge',
                              style: GoogleFonts.plusJakartaSans(
                                color: const Color.fromARGB(255, 96, 100, 102),
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 27.0, vertical: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BankReconcile()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(140, 27),
                  backgroundColor:
                      const Color(0xFF2C3A76), // Change button color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(7.0), // Adjust the radius
                  ),
                ),
                child: Text(
                  'Start Reconciling',
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 10.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF2C3A76),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            // backgroundImage: AssetImage(
                            //     'assets/profile_image.png'), // Add your profile image asset here
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maria Dela Cruz',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Admin',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Dashboard'),
                onTap: () {
                  // Handle home tap
                },
              ),
              ExpansionTile(
                title: const Text("Masterlist"),
                leading:
                    const Icon(Icons.insert_chart_outlined_rounded), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Customer Information"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Supplier Information"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Employee"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Bank Accounts"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Char of Accounts"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Product and Services"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Cost centers"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Currency"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Sales"),

                leading: const Icon(Icons.auto_graph_rounded), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Sales Order"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Invoice"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Sales Receipt"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Credit Note"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Refund Receipt"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Statement of Account"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Delivery Receipt"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Backload"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Purchase"),
                leading: const Icon(Icons.shopping_bag_outlined), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("APV"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Check Voucher"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Petty Cash"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Liquidation"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Prepayments"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Advance Payment"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Inventory"),
                leading: const Icon(Icons.book_outlined), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Purchase Order"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Material Receiving"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Inventory Quantity Adjustments"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Inventory Tracker"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Asset Management"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Prepayments"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Depraciation Schedule"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),
              ExpansionTile(
                title: const Text("Banking"),
                leading: const Icon(Icons.receipt_long_rounded), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Cash Transfer (Deposit)"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Bank Reconcilliations"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Check Release"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),

              ListTile(
                leading: const Icon(Icons.travel_explore),
                title: const Text('Journey Entry'),
                onTap: () {
                  // Handle home tap
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart_rounded),
                title: const Text('Reports'),
                onTap: () {
                  // Handle settings tap
                },
              ),
              const Divider(
                thickness: 2,
              ),
              ExpansionTile(
                title: const Text("Settings"),
                leading: const Icon(Icons.settings), // add icon
                childrenPadding: const EdgeInsets.only(left: 90),
                trailing: const Icon(
                    Icons.keyboard_arrow_right), // add expansion/collapse icon
                initiallyExpanded: false, // children padding
                children: [
                  ListTile(
                    title: const Text("Company Information"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Preferences"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Setup Wizard"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Beginning Balance"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Approver Settings"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("System User"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  ListTile(
                    title: const Text("Manage Subscription"),
                    onTap: () {
                      // action on press
                    },
                  ),
                  // more child menu
                ], // set to true if you want the tile to be initially expanded
              ),

              // Add more list tiles for other options if needed
            ],
          ),
        ),
      );
}
