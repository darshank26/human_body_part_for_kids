import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0; //New


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text("Human Body Parts for Kids",
          style: GoogleFonts.mochiyPopOne(textStyle: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 0.5))
          ,),),
      body:  Padding(
        padding: const EdgeInsets.only(top:10.0,bottom: 50.0),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ToggleSwitch(
                minWidth: 150.0,
                cornerRadius: 20.0,
                activeBgColors: [[Colors.orange], [Colors.orange]],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                initialLabelIndex: 1,
                totalSwitches: 2,
                fontSize: 20,
                customTextStyles : [
                  GoogleFonts.mochiyPopOne(textStyle: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 0.5)),
                  GoogleFonts.mochiyPopOne(textStyle: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 0.5))
                ],
                icons: [
                  FontAwesomeIcons.eye,
                  FontAwesomeIcons.eyeLowVision

                ],
                labels: ['Show Text', 'Hide Text'],
                radiusStyle: true,
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
            ),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: 300,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 1,
                      child: Center(
                        child: Text(
                          'Card $index',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.orange,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child:  Container(
                      height: 50,
                      width: 100,
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ) ,
                  SizedBox(width: 20,),
                  Card(
                    color: Colors.orange,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child:  Container(
                      height: 80,
                      width: 80,
                      child: Icon(
                        Icons.volume_up,
                        color: Colors.white,
                        size: 44,
                      ),
                    ),
                  ) ,
                  SizedBox(width: 20,),
                  Card(
                    color: Colors.orange,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child:  Container(
                      height: 50,
                      width: 100,
                      child: Icon(
                        color: Colors.white,
                        Icons.arrow_forward,
                        size: 30,
                      ),
                    ),
                  ) ,

                ],
              ),
            )
          ],
        ),
      ),

       bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Colors.orange,
         currentIndex: _selectedIndex, //New
         onTap: _onItemTapped,
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: 'Home',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.phone_android),
             label: 'More Apps',
           ),

         ],
       ),

    );


  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}
