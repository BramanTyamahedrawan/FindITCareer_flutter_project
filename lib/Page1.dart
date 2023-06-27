import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page2.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarPage(),
        body: const Screen1(),
      ),
    );
  }
}

Color fontColor = const Color.fromARGB(248, 119, 0, 255);
Random random = Random();

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/page2.gif'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black26, BlendMode.darken)))),
        Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  JudulPage1(),
                  const Padding(padding: EdgeInsets.all(5)),
                  DeskripsiPage1(),
                  const SizedBox(
                    height: 160,
                  ),
                  ButtonMulai(),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class JudulPage1 extends StatelessWidget {
  const JudulPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'SELAMAT DATANG DI FINDITCAREER!',
            textAlign: TextAlign.center,
            style: GoogleFonts.cinzel(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
      ),
    );
  }
}

class DeskripsiPage1 extends StatelessWidget {
  const DeskripsiPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15),
        child: Text(
            'Platform terbaik untuk rekrutmen talenta digital, pencari kerja dapat mencari pekerjaan, dan perekrut dapat mencari talenta siap kerja yang sudah direkomendasikan oleh tim penilai kami yang berpengalaman lebih dari 10 tahun di industri digital.',
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                color: Colors.lightGreen[100],
                fontSize: 20,
                fontWeight: FontWeight.w600)));
  }
}

class ButtonMulai extends StatelessWidget {
  const ButtonMulai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.lightBlue,
            onPrimary: Colors.yellow,
            onSurface: Colors.lightGreen,
            elevation: 10,
            shadowColor: Colors.cyan,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            fixedSize: const Size(200, 30)),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (((context) => const Screen2()))));
        },
        child: Text('Next',
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 25)));
  }
}
