
import 'package:flutter/material.dart';

class CallCenter extends StatelessWidget {
   CallCenter({super.key});
   var email = TextEditingController();
   var name = TextEditingController();
   var titlemesssage = TextEditingController();
   var message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          // width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/3.jpg",
                  ),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("Welcom in Beauty Center",textAlign:TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.pink.shade100
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textAlign: TextAlign.center,"We are Happey to recive your suggest And Opinion",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white
                  ),),
                ),

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: name,
                    cursorColor: Colors.pink,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'UserName',
                      hintStyle: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      fillColor:  Colors.white.withOpacity(0.5),
                      filled: true,focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      border: OutlineInputBorder(

                          borderSide: BorderSide(width:10,color: Colors.pinkAccent),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: email,
                    cursorColor: Colors.pink,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email_outlined,color: Colors.pink,),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      fillColor:  Colors.white.withOpacity(0.5),
                      filled: true,focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      border: OutlineInputBorder(

                          borderSide: BorderSide(width:10,color: Colors.pinkAccent),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: titlemesssage,
                    cursorColor: Colors.pink,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.title_outlined,color: Colors.pink,),
                      hintText: 'Title Message',
                      hintStyle: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      fillColor:  Colors.white.withOpacity(0.5),
                      filled: true,focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      border: OutlineInputBorder(

                          borderSide: BorderSide(width:10,color: Colors.pinkAccent),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: message,
                    cursorColor: Colors.pink,
                    maxLength:5,
                    maxLines: 5,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.message,color: Colors.pink,),
                      hintText: ' Message',
                      hintStyle: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      fillColor:  Colors.white.withOpacity(0.5),
                      filled: true,focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                      border: OutlineInputBorder(

                          borderSide: BorderSide(width:10,color: Colors.pinkAccent),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: MaterialButton(

                      color: Colors.pink.shade700,
                      onPressed: () {
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => MainScreen()),
                        //       (route) => false,
                        // );
                      },
                      child:  Text('Submit',style: TextStyle(
                          color:  Color(0xFFFBF2D9),
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
