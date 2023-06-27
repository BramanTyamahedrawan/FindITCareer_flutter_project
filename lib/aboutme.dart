import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  _AboutMeScreenState createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  Random random = Random();
  Color fontColor = const Color(0xffffb401);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const AppBarPage(),
        body: Stack(children: [
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                      random.nextInt(256)),
                  Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                      random.nextInt(256))
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              curve: Curves.easeOut,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 570,
                child: Card(
                  elevation: 20,
                  child: Stack(children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    FotoProfil(),
                    const Padding(padding: EdgeInsets.all(6)),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 290, 10, 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              opacity: 0.8,
                              image: AssetImage('images/texture2.jpg'),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(children: [
                          Column(
                            children: [
                              Text(
                                'Braman Tyamahendrawan',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: fontColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                maxLines: 2,
                              ),
                              const Padding(padding: EdgeInsets.all(5)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Icon(Icons.email_sharp),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'brammahendrawan693@gmail.com',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.red,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(5)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [FavoriteButton(), LikeButton()],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Kembali'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.deepPurple),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class FotoProfil extends StatelessWidget {
  const FotoProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('images/aboutme_background.jpg'),
                    fit: BoxFit.cover)),
          ),
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/aboutme.jpg'),
              radius: 100,
            ),
          )
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 30,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLike ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined,
        color: Colors.red,
        size: 30,
      ),
      onPressed: () {
        setState(() {
          isLike = !isLike;
        });
      },
    );
  }
}
