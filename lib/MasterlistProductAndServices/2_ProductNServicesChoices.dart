import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/1_ProductNServicesDashboard.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/3_NonInventory.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/4_Service.dart';
import 'package:smart_ledger_ai/MasterlistProductAndServices/5_Bundle.dart';

class ProductNServicesChoices extends StatefulWidget {
  const ProductNServicesChoices({super.key});

  @override
  State<ProductNServicesChoices> createState() => _ProductNServicesChoices();
}

class _ProductNServicesChoices extends State<ProductNServicesChoices> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFBF2),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 15.0, bottom: 0.0, left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ProductNServicesDashboard();
                      },
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF2C3A76),
                      ),
                      child: Transform.translate(
                        offset: const Offset(0,
                            0), // Adjust the Y offset as needed to center the icon
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Product and Services Information',
                style: GoogleFonts.plusJakartaSans(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 40,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 20.0, // Spacing between columns
                mainAxisSpacing: 20.0,
                childAspectRatio: 0.9, // Spacing between rows
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                      border: Border.all(
                        color: const Color(0xFF2C3A76), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const NonInventory();
                            },
                          ),
                        );
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                'Non-inventory',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Divider(
                                thickness: 0.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: SvgPicture.asset(
                                    'assets/custom_icons/box.svg'),
                              ),
                              Center(
                                child: Text(
                                  'Products you buy and/or sell but don’t need to (or can’t) track quantities of, for example, nuts and bolts used in an installation.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.plusJakartaSans(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                      border: Border.all(
                        color: const Color(0xFF2C3A76), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Service();
                            },
                          ),
                        );
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                'Service',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Divider(
                                thickness: 0.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: SvgPicture.asset(
                                    'assets/custom_icons/service.svg'),
                              ),
                              Center(
                                child: Text(
                                  'Services that you provide to customers, for example, landscaping or tax preparation services.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.plusJakartaSans(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                      border: Border.all(
                        color: const Color(0xFF2C3A76), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Bundle();
                            },
                          ),
                        );
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                'Bundle',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Divider(
                                thickness: 0.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: SvgPicture.asset(
                                    'assets/custom_icons/gift.svg'),
                              ),
                              Center(
                                child: Text(
                                  'A collection of products and/or services that you sell together, for example, a gift basket of fruit, cheese, and wine.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.plusJakartaSans(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                      border: Border.all(
                        color: const Color(0xFF2C3A76), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor: Color(0xFFFFFBF2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(20.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Turn on Inventory Tracking',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.plusJakartaSans(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                        style: GoogleFonts.plusJakartaSans(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(height: 20.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pop(); //
                                            },
                                            child: Text(
                                              'CANCEL',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      color: Colors.black,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          ),
                                          const SizedBox(width: 20.0),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              'TURN ON',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      color: const Color(
                                                          0xFFED2F2F),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                'Inventory',
                                style: GoogleFonts.plusJakartaSans(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Divider(
                                thickness: 0.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
                                child: SvgPicture.asset(
                                    'assets/custom_icons/inventory.svg'),
                              ),
                              Center(
                                child: Text(
                                  'Products you buy and/or sell and that you track quantities of.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.plusJakartaSans(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Text(
                                  'Turn on inventory tracking',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.plusJakartaSans(
                                      color: const Color(0xFF0083EB),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
