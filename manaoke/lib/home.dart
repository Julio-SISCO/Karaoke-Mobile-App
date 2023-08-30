import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manaoke/helpers/colors.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: AppColors.defaut,
        ),
        backgroundColor: Colors.grey,
        body: GridView.builder(
          padding: EdgeInsets.all(20.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
          ),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            // height: MediaQuery.of(context).size.height * .3,
            // width: MediaQuery.of(context).size.height * .23,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  // height: MediaQuery.of(context).size.height * .19,
                  // width: MediaQuery.of(context).size.height * .23,
                  child: const Center(
                    child: Icon(
                      Icons.headset_mic,
                      size: 120,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.buttonOnBlueFont,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                  // height: MediaQuery.of(context).size.height * .11,
                  // width: MediaQuery.of(context).size.height * .23,
                  child: const Center(
                    child: Text('data'),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Center(
        //   child: Container(
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(10.0),
        //     ),
        //     height: MediaQuery.of(context).size.height * .3,
        //     width: MediaQuery.of(context).size.height * .23,
        //     child: Column(
        //       children: [
        //         Container(
        //           decoration: const BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.only(
        //               topRight: Radius.circular(10.0),
        //               topLeft: Radius.circular(10.0),
        //             ),
        //           ),
        //           height: MediaQuery.of(context).size.height * .19,
        //           width: MediaQuery.of(context).size.height * .23,
        //           child: const Center(
        //             child: Icon(
        //               Icons.headset_mic,
        //               size: 120,
        //             ),
        //           ),
        //         ),
        //         Container(
        //           decoration: const BoxDecoration(
        //             color: AppColors.buttonOnBlueFont,
        //             borderRadius: BorderRadius.only(
        //               bottomRight: Radius.circular(10.0),
        //               bottomLeft: Radius.circular(10.0),
        //             ),
        //           ),
        //           height: MediaQuery.of(context).size.height * .11,
        //           width: MediaQuery.of(context).size.height * .23,
        //           child: const Center(
        //             child: Text('data'),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
