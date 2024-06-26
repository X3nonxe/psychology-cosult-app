import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_psikologi/screens/Views/appointment.dart';
import 'package:konsultasi_psikologi/screens/Widgets/date_select.dart';
import 'package:konsultasi_psikologi/screens/Widgets/psycholog_list.dart';
import 'package:konsultasi_psikologi/screens/Widgets/time_select.dart';
import 'package:konsultasi_psikologi/utils/color_pallate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PsychologDetails extends StatefulWidget {
  const PsychologDetails({super.key});

  @override
  _PsychologDetailsState createState() => _PsychologDetailsState();
}

class _PsychologDetailsState extends State<PsychologDetails> {
  bool showExtendedText = false;

  void toggleTextVisibility() {
    setState(() {
      showExtendedText = !showExtendedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
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
            "Detail Psikolog",
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
        // ... Your existing code ...

        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const PsychologList(
                  distance: "800m away",
                  image: "lib/icons/male-doctor.png",
                  maintext: "Marcus Horizon",
                  numRating: "4.7",
                  subtext: "Psikolog Klinis",
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: toggleTextVisibility,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tentang Psikolog",
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          showExtendedText
                              ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free lines do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam consectetur adipiscing elit. Sed euismod ..."
                              : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free ... ",
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontSize: 14.sp,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          showExtendedText ? "Read less" : "Read more",
                          style: TextStyle(
                            color: showExtendedText
                                ? bluePrimaryColor
                                : bluePrimaryColor, // Change color based on visibility
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 3,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        DateSelect(date: "21", maintext: "Senin"),
                        DateSelect(date: "22", maintext: "Selasa"),
                        DateSelect(date: "23", maintext: "Rabu"),
                        DateSelect(date: "24", maintext: "Kamis"),
                        DateSelect(date: "25", maintext: "Jum'at"),
                        DateSelect(date: "26", maintext: "Sabtu"),
                        DateSelect(date: "27", maintext: "Minggu"),
                        DateSelect(date: "28", maintext: "Senin"),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Time select container importing widget from widgets/times_select
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2400,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //In main container 2 Columns use
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2500,
                        width: MediaQuery.of(context).size.width * 0.2900,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TimeSelect(mainText: "09:00 AM"),
                              TimeSelect(mainText: "01:00 AM"),
                              TimeSelect(mainText: "04:00 AM"),
                              TimeSelect(mainText: "07:00 AM"),
                            ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2500,
                        width: MediaQuery.of(context).size.width * 0.2500,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TimeSelect(mainText: "10:00 PM"),
                              TimeSelect(mainText: "02:00 PM"),
                              TimeSelect(mainText: "07:00 PM"),
                              TimeSelect(mainText: "09:00 PM"),
                            ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2500,
                        width: MediaQuery.of(context).size.width * 0.2500,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TimeSelect(mainText: "11:00 AM"),
                              TimeSelect(mainText: "03:00 PM"),
                              TimeSelect(mainText: "08:00 PM"),
                              TimeSelect(mainText: "10:00 AM"),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  // Container(
                  //   height: MediaQuery.of(context).size.height * 0.06,
                  //   width: MediaQuery.of(context).size.width * 0.1300,
                  //   decoration: BoxDecoration(
                  //       color: const Color.fromARGB(255, 247, 247, 247),
                  //       borderRadius: BorderRadius.circular(18),
                  //       image: const DecorationImage(
                  //           image: AssetImage(
                  //             "lib/icons/Chat.png",
                  //           ),
                  //           filterQuality: FilterQuality.high)),
                  // ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const Appointment()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.6300,
                      decoration: BoxDecoration(
                        color: bluePrimaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buat Janji",
                              style: GoogleFonts.openSans(
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ]),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
