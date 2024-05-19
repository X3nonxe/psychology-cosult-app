import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_psikologi/screens/Views/homepage.dart';
import 'package:konsultasi_psikologi/screens/Views/psycholog_details_screen.dart';
import 'package:konsultasi_psikologi/screens/Widgets/psycholog_list.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PsychologSearch extends StatelessWidget {
  const PsychologSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: const Homepage()));
          },
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("lib/icons/back1.png"),
            )),
          ),
        ),
        title: Text(
          "Top Psikolog",
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 18.sp),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("lib/icons/more.png"),
              )),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const PsychologDetails()));
            },
            child: const PsychologList(
                distance: "800m Away",
                image: "lib/icons/male-doctor.png",
                maintext: "Marcus Horizon",
                numRating: "4.7",
                subtext: "Psikolog Klinis"),
          ),
          const PsychologList(
              distance: "800m Away",
              image: "lib/icons/docto3.png",
              maintext: "Marcus Horizon",
              numRating: "4.7",
              subtext: "Psikolog Klinis"),
          const PsychologList(
              distance: "800m Away",
              image: "lib/icons/doctor2.png",
              maintext: "Marcus Horizon",
              numRating: "4.7",
              subtext: "Psikolog Klinis"),
          const PsychologList(
              distance: "800m Away",
              image: "lib/icons/black-doctor.png",
              maintext: "Marcus Horizon",
              numRating: "4.7",
              subtext: "Psikolog Klinis"),
          const PsychologList(
              distance: "800m Away",
              image: "lib/icons/male-doctor.png",
              maintext: "Marcus Horizon",
              numRating: "4.7",
              subtext: "Psikolog Klinis"),
        ],
      )),
    );
  }
}
