import 'package:flutter/material.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/ClassJobDescription.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page4.dart';
import 'dart:math';

class Screen3 extends StatelessWidget {
  Screen3({Key? key}) : super(key: key);

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPage(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
            Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256))
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth <= 650) {
                  return const ListViewBuilder();
                } else if (constraints.maxWidth <= 1200) {
                  return const GridBuilder(counter: 4);
                } else {
                  return const GridBuilder(counter: 6);
                }
              },
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

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final JobDescription job = jobDescriptionList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Screen4(place: job);
            }));
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Card(
              elevation: 10.0,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8.0),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Colors.lightGreen, width: 3)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(job.imageAsset)),
                  ),
                  const Padding(padding: EdgeInsets.all(8.0)),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            job.nameJob,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          const Padding(padding: EdgeInsets.all(3)),
                          Text(
                            job.nameCorp,
                            style: GoogleFonts.montserrat(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: jobDescriptionList.length,
    );
  }
}

class GridBuilder extends StatelessWidget {
  final int counter;

  const GridBuilder({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: counter,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: jobDescriptionList.map((place) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen4(place: place);
              }));
            },
            child: Card(
              elevation: 10.0,
              color: Colors.grey[200],
              margin: const EdgeInsets.all(8.0),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Colors.lightGreen, width: 3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        place.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      place.nameJob,
                      style: GoogleFonts.roboto(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      place.nameCorp,
                      style: GoogleFonts.montserrat(
                        color: Colors.indigo,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
