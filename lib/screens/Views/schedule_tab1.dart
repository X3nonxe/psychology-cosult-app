import 'package:flutter/material.dart';
import 'package:konsultasi_psikologi/screens/Widgets/schedule_card.dart';

class SheduleTab1 extends StatelessWidget {
  const SheduleTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        SecheduleCard(
          confirmation: "Terkonfirmasi",
          mainText: "Marcus Horizon",
          subText: "Psikolog Klinis",
          date: "26/06/2024",
          time: "10:30 AM",
          image: "lib/icons/male-doctor.png",
        ),
        SizedBox(
          height: 20,
        ),
        SecheduleCard(
          confirmation: "Terkonfirmasi",
          mainText: "Marcus Horizon",
          subText: "Psikolog Klinis",
          date: "26/06/2024",
          time: "2:00 PM",
          image: "lib/icons/female-doctor2.png",
        )
      ]),
    );
  }
}
