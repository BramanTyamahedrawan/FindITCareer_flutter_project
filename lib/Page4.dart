import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/ClassJobDescription.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/appbar.dart';
import 'package:google_fonts/google_fonts.dart';

Random random = Random();

class Screen4 extends StatelessWidget {
  final JobDescription place;

  const Screen4({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return WebPage(place: place);
        } else {
          return MobilePage(place: place);
        }
      },
    );
  }
}

class MobilePage extends StatelessWidget {
  final JobDescription place;

  const MobilePage({
    Key? key,
    required this.place,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Center(
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      child: Image.asset(place.imageAsset)),
                ),
                const SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: BookmarksButton(),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(8)),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      place.nameJob,
                      style: GoogleFonts.oswald(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      place.nameCorp,
                      style: GoogleFonts.uchen(
                          decoration: TextDecoration.underline,
                          color: Colors.red,
                          fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.school),
                              const SizedBox(height: 8.0),
                              Text(
                                place.education,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              const Icon(Icons.schedule),
                              const SizedBox(height: 8.0),
                              Text(
                                place.workingHours,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              const Icon(Icons.assignment),
                              const SizedBox(height: 8.0),
                              Text(
                                place.jobType,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      place.description,
                      style: GoogleFonts.lato(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: place.assetImage.map((ass) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(ass),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_sharp),
      ),
    );
  }
}

class WebPage extends StatelessWidget {
  final JobDescription place;

  WebPage({Key? key, required this.place}) : super(key: key);

  final scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarPage(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Center(
                        child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                            child: Image.asset(place.imageAsset)),
                      ),
                      const SafeArea(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: BookmarksButton(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      place.nameJob,
                      style: GoogleFonts.oswald(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      place.nameCorp,
                      style: GoogleFonts.uchen(
                          decoration: TextDecoration.underline,
                          color: Colors.red,
                          fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.paid),
                              const SizedBox(height: 8.0),
                              Text(
                                place.salary,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              const Icon(Icons.work),
                              const SizedBox(height: 8.0),
                              Text(
                                place.category,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              const Icon(Icons.location_on),
                              const SizedBox(height: 8.0),
                              Text(
                                place.location,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.school),
                              const SizedBox(height: 8.0),
                              Text(
                                place.education,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              const Icon(Icons.schedule),
                              const SizedBox(height: 8.0),
                              Text(
                                place.workingHours,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              const Icon(Icons.assignment),
                              const SizedBox(height: 8.0),
                              Text(
                                place.jobType,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      place.description,
                      style: GoogleFonts.lato(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: place.assetImage.map((ass) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(ass),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_sharp),
      ),
    );
  }
}

class BookmarksButton extends StatefulWidget {
  const BookmarksButton({Key? key}) : super(key: key);

  @override
  _BookmarksButtonState createState() => _BookmarksButtonState();
}

class _BookmarksButtonState extends State<BookmarksButton> {
  bool isSave = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isSave ? Icons.bookmark_add : Icons.bookmark_border,
        color: Colors.black,
        size: 40,
      ),
      onPressed: () {
        setState(() {
          isSave = !isSave;
        });
      },
    );
  }
}
