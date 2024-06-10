import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyProfilePage(),
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          // change the border color
          onPrimary: Colors.black,

          // change the text color
          onSurface: Colors.black,
        ),
        // button colors
      ),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: backArrowContainer(),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true).pop(context);
            },
            child: logOutContainer(),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 130.0),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    width: 116,
                    height: 116,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/116x116"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Shanavas Ali',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                      height: 0.03,
                      letterSpacing: 0.13,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Vehicle assigned',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4000000059604645),
                      fontSize: 16,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                      letterSpacing: 0.08,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 320,
                    height: 63,
                    decoration: ShapeDecoration(
                      color: Color(0xFF21222D),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF6C6C6C)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'B UAE AJMAN 12345',
                          style: TextStyle(
                            color: Color(0xFFD92B83),
                            fontSize: 20,
                            fontFamily: 'Open Sans Hebrew',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.20,
                          ),
                        ),
                        Text(
                          'Yamaha Enticer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Open Sans Hebrew',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 320,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF2B2B2B),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GestureDetector(
                          child: Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all()),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [],
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Text(""),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 127,
                  ),
                  Container(
                      width: 296,
                      height: 51,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF00C170),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFF00C170)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'I am Available',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                              letterSpacing: 0.09,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget logOutContainer() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 108,
        height: 42,
        decoration: ShapeDecoration(
          color: const Color(0xFFD92B83),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Center(
          child: Text(
            'Logout',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Open Sans Hebrew',
              fontWeight: FontWeight.w700,
              height: 1.0, // Set a non-zero value for height
              letterSpacing: 0.18,
            ),
          ),
        ),
      ),
    );
  }

  Widget backArrowContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: 108,
        height: 42,
        decoration: ShapeDecoration(
          color: const Color(0xFFD92B83),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(context);
          },
        ),
      ),
    );
  }
}
