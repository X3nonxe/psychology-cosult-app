import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_psikologi/screens/Views/article_page.dart';
import 'package:konsultasi_psikologi/screens/Views/find_psycholog.dart';
import 'package:konsultasi_psikologi/screens/Views/psycholog_search.dart';
import 'package:konsultasi_psikologi/screens/Widgets/article.dart';
import 'package:konsultasi_psikologi/screens/Widgets/banner.dart';
import 'package:konsultasi_psikologi/screens/Widgets/list_icon.dart';
import 'package:konsultasi_psikologi/screens/Widgets/list_psycholog.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset(
                "lib/icons/bell.png",
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ],
        title: Column(
          children: [
            const SizedBox(height: 35),
            Text(
              "Temukan solusi konsultasi yang Anda inginkan",
              style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 51, 47, 47),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
              maxLines: 3,
            ),
          ],
        ),
        toolbarHeight: 130,
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(),
              child: TextField(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const FindPsycholog()));
                },
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.none,
                autofocus: false,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  focusColor: Colors.black26,
                  fillColor: const Color.fromARGB(255, 247, 247, 247),
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: SizedBox(
                      height: 10,
                      width: 10,
                      child: Image.asset(
                        "lib/icons/search.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                  label: const Text("Cari psikolog, artikel, topik..."),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Body Start fro here
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListIcons(icon: "lib/icons/Doctor.png", text: "Doctor"),
              ListIcons(icon: "lib/icons/Pharmacy.png", text: "Pharmacy"),
              ListIcons(icon: "lib/icons/Hospital.png", text: "Hospital"),
              ListIcons(icon: "lib/icons/Ambulance.png", text: "Ambulance"),
            ],
          ),

          //List icons (Can Edit in Widgets )
          const SizedBox(
            height: 10,
          ),
          const BannerWidget(),
          // Banner Design
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Psikolog",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 46, 46, 46),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const PsychologSearch()));
                  },
                  child: Text(
                    "Lihat semua",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      color: const Color.fromARGB(255, 3, 190, 150),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 180,
              width: 400,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  ListPsycholog(
                      distance: "130m Away",
                      image: "lib/icons/male-doctor.png",
                      maintext: "Marcus Horizon",
                      numRating: "4.7",
                      subtext: "Psikoolog Klinis"),
                  ListPsycholog(
                      distance: "130m Away",
                      image: "lib/icons/docto3.png",
                      maintext: "Maria Elena",
                      numRating: "4.6",
                      subtext: "Psikoolog Klinis"),
                  ListPsycholog(
                      distance: "2km away",
                      image: "lib/icons/doctor2.png",
                      maintext: "Stevi Jessi",
                      numRating: "4.8",
                      subtext: "Psikoolog Klinis"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Artikel Terkait",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 46, 46, 46),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const ArticlePage()));
                  },
                  child: Text(
                    "Lihat semua",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      color: const Color.fromARGB(255, 3, 190, 150),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //Article banner here import from widget>article
          const Article(
              image: "images/article1.png",
              dateText: "Jun 10, 2021 ",
              duration: "5min read",
              mainText:
                  "Kesehatan Mental dapat dipengaruhi oleh berbagai faktor"),
        ]),
      ),
    );
  }
}