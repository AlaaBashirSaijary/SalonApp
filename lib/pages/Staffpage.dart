
import 'package:flutter/material.dart';

class StaffPage extends StatelessWidget {
   StaffPage({super.key, required this.nameStaff, required this.images, required this.imageStaff});
   final String nameStaff;
   final String imageStaff;
   final List<String>images;
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        title: Text(nameStaff,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white
        ),),
      ),
      body:SingleChildScrollView(
        physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all( 10.0),
                child: Container(
                  width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      "images/braid4.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("I am one af our Staff ,\n I have "
                    "3 years Experince in this worker,\n I love My Work and I have alot of workers  ",textAlign:TextAlign.center,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,

                ),),
              ),
              SizedBox(height: 20,),
              Text("Some For My Works",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.pink.shade700,

              ),),
              Container(
                  height: 230,
                  width: screen_size_width,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: ( context, int index) {
                      return     Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * .5,
                          height: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.4), BlendMode.darken),
                                  image: ExactAssetImage(images[index]),
                                  fit: BoxFit.cover)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left:0.0),
                                child: Text(nameStaff,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      );

                    },

                  )),
            ],
          ))
    );
  }
}
