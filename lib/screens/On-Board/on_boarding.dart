import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konsultasi_psikologi/screens/Login-SignUp/login_signup.dart';
import 'package:konsultasi_psikologi/screens/On-Board/on_board1.dart';
import 'package:konsultasi_psikologi/screens/On-Board/on_board2.dart';
import 'package:konsultasi_psikologi/screens/On-Board/on_board3.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();

  bool onLastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastpage = (index == 2);
              });
            },
            children: const [
              OnBoard1(),
              OnBoard2(),
              OnBoard3(),
            ]),
        Container(
          alignment: const Alignment(-0.6, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    "Lewati",
                    style: GoogleFonts.inter(fontSize: 15, color: Colors.grey),
                  )),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const SlideEffect(
                    spacing: 4.0,
                    radius: 4.0,
                    dotWidth: 14.0,
                    dotHeight: 7.0,
                    strokeWidth: 1.5,
                    dotColor: Color.fromARGB(255, 170, 255, 237),
                    activeDotColor: Color.fromARGB(255, 3, 190, 150)),
              ),
              onLastpage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.bottomToTop,
                                child: const LoginSignup()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 3, 190, 150),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Selesai ",
                                style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.04,
                                child: Image.asset("lib/icons/check.png"),
                              ),
                            ],
                          ),
                        ),
                      ))
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 3, 190, 150),
                            borderRadius: BorderRadius.circular(35)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Lanjut ",
                                style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 1),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.06,
                                child: Image.asset("lib/icons/arrow.png"),
                              ),
                            ],
                          ),
                        ),
                      )),
            ],
          ),
        )
      ],
    ));
  }
}
