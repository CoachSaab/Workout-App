import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final levels = ['Easy', 'Medium', 'Hard', 'Advance'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.pexels.com/photos/9171160/pexels-photo-9171160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            opacity: 0.8,
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('LIFT',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.blueGrey,
                      fontSize: 40,
                      //fontFamily:NativeRuntime.buildId
                    ),
                  ),
                  Text('HEAVY',
                    style: GoogleFonts.lato(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.blueGrey,
                      fontSize: 40,
                      fontStyle: FontStyle.italic
                      //fontFamily:NativeRuntime.buildId
                    ),
                  )
                ],
              ).animate().slideX(duration: 1.seconds),
            ),

            Container(
              child:Text('&',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.blueGrey,
                    fontSize: 40,
                    fontStyle: FontStyle.italic
                  //fontFamily:NativeRuntime.buildId
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('CONQUER ',
                  style: GoogleFonts.lato(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.blueGrey,
                    fontSize: 40,
                    //fontFamily:NativeRuntime.buildId
                  ),
                ),
                Text('FEARS',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.blueGrey,
                      fontSize: 40,
                      fontStyle: FontStyle.italic
                    //fontFamily:NativeRuntime.buildId
                  ),
                )
              ],
            ).animate().slideX(duration: 1.seconds),

            SizedBox(height: 350),
            Column(
              children: [
                Text('About You',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decorationColor: Colors.blueGrey,
                        fontSize: 40,
                      //fontFamily:NativeRuntime.buildId
                    ),
                  ),
                Text('We went to know about your workout preference\n please follow the steps',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.blueGrey,
                    fontSize: 10,
                    //fontFamily:NativeRuntime.buildId
                  ),
                ),
              ],
            ).animate().fadeIn(delay:1.seconds, duration: 4.seconds),
            SizedBox(height: 30),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.symmetric(vertical: BorderSide(color: Colors.green,width: 2)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                   itemCount: levels.length,
                  itemBuilder: (context,index){
                    return Container(
                      height: 50,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(strokeAlign: 1),
                      ),
                      child: Center(
                          child: Text(
                        levels[index],
                        style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                          ).animate().flip(delay: 2.seconds ,duration: 2.seconds)
                    ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

//Lift heavy & Conquer fears