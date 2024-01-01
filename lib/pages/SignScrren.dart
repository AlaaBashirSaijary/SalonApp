
import 'package:flutter/material.dart';
import 'package:salonapp/pages/home.dart';



class SignScreen extends StatelessWidget {
   SignScreen({super.key});
   var email = TextEditingController();
   var password = TextEditingController();
   var phone = TextEditingController();
   var Address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE2E5),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "images/4.jpg",
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all( 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    'Wellcom in MyCenter  \n ',
                    style: TextStyle(
                        color: Colors.pink.shade700,
                        fontWeight: FontWeight.w900,
                        fontSize: 30),
                  ),
                ),
                SizedBox(height: 20,),

                TextFormField(
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
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.pink,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.pink,),
                    hintStyle: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    fillColor: Colors.white.withOpacity(0.5),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width:10,color: Colors.pinkAccent),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller:Address,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.pink,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    filled: true,
                    suffixIcon: Icon(Icons.place_outlined,color: Colors.pink,),
                    hintStyle: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    fillColor: Colors.white.withOpacity(0.5),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width:10,color: Colors.pinkAccent),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),),
                ),

                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: phone,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.pink,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'phone',
                    filled: true,
                    suffixIcon: Icon(Icons.phone,color: Colors.pink,),
                    hintStyle: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    fillColor: Colors.white.withOpacity(0.5),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width:10,color: Colors.pinkAccent),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),),
                ),



                SizedBox(height: 100,),
                Container(
                  width: 300,height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: MaterialButton(

                      color: Colors.pink.shade700,
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()),
                              (route) => false,
                        );
                      },
                      child:  Text('Create Now',style: TextStyle(
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
