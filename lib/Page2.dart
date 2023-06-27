import 'package:flutter/material.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/Page3.dart';
import 'package:flutter_dicoding_proyek_akhir_pemula/appbar.dart';
import 'package:google_fonts/google_fonts.dart';

String _name = ' ';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPage(),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/page1.gif'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              )),
            ),
            SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      LoginText(),
                      const SizedBox(
                        height: 100,
                      ),
                      Username(),
                      const SizedBox(
                        height: 30,
                      ),
                      TexfieldEmail(),
                      const SizedBox(
                        height: 30,
                      ),
                      TexfieldPassword(),
                      const SizedBox(
                        height: 80,
                      ),
                      ButtonNextPage(),
                      const SizedBox(
                        height: 8,
                      ),
                      ButtonKembali(),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginText extends StatelessWidget {
  const LoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        child: const ListTile(
          title: Text(
            'LOGIN SCREEN',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
        elevation: 10.0,
        margin: const EdgeInsets.all(20.0),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.lightGreen, width: 2)));
  }
}

class Username extends StatefulWidget {
  const Username({Key? key}) : super(key: key);

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16.0)),
        child: TextField(
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              hintText: 'username/full name',
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.drive_file_rename_outline_sharp,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              hintStyle: TextStyle(color: Colors.white70)),
          style: const TextStyle(color: Colors.white),
          textInputAction: TextInputAction.next,
          onChanged: (String value) {
            setState(() {
              _name = value;
            });
          },
        ),
      ),
    );
  }
}

class TexfieldEmail extends StatelessWidget {
  const TexfieldEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16.0)),
        child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              hintText: 'email',
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.email_sharp,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              hintStyle: TextStyle(color: Colors.white70)),
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}

class TexfieldPassword extends StatelessWidget {
  const TexfieldPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16.0)),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              hintText: 'password',
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              hintStyle: TextStyle(color: Colors.white70)),
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}

class ButtonNextPage extends StatelessWidget {
  const ButtonNextPage({Key? key}) : super(key: key);

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
            fixedSize: const Size(250, 30)),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('Welcome, $_name'),
                );
              });
          Navigator.push(
              context, MaterialPageRoute(builder: (((context) => Screen3()))));
        },
        child: Text('SIGN IN',
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 25)));
  }
}

class ButtonKembali extends StatelessWidget {
  const ButtonKembali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(primary: Colors.white),
        child: Text(
          'SIGN OUT',
          style: GoogleFonts.poppins(
              fontSize: 14, decoration: TextDecoration.underline),
        ));
  }
}
