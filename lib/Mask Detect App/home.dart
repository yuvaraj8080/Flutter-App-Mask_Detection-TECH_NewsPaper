import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(title:Text("ML Classifier",style:GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.bold)),
      backgroundColor:Colors.blue,elevation:3,shadowColor:Colors.black
      ),
      body:Container(
        width: w, height: h,
        decoration:BoxDecoration(
          gradient:LinearGradient(
            colors:[
              Color(0xff4facfe),
              Color(0xff00f2fe)
            ])
        ),
        child:Column(crossAxisAlignment:CrossAxisAlignment.center,
          children:[

           Container(height:200,width:410,color:Colors.transparent,
             child:Image.asset("assets/images/mask2.jpg")
           ),
            SizedBox(height:20),
            Container(child: Text("ML Classifier: MaskGuard",style:GoogleFonts.robotoSlab(fontSize:25,fontWeight:FontWeight.bold))),
            // SizedBox(height:10),
            Container(child: Text("Automated Mask Detection System",
                style:GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.bold,))),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:50,width:double.infinity,
                child:ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    overlayColor: MaterialStateProperty.all(Colors.white70),
                    elevation:MaterialStateProperty.all(3),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                  ),
                    child:Text("Capture",
                        style:GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black)),
                    onPressed:(){

                }),
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:50,width:double.infinity,
                child:ElevatedButton(
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      overlayColor: MaterialStateProperty.all(Colors.white70),
                      elevation:MaterialStateProperty.all(3),
                      shadowColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child:Text("Gallery",
                        style:GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black)),
                    onPressed:(){

                    }),
              ),),
          ])
      )
    );
  }
}
