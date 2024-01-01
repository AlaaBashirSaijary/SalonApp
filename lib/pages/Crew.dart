import '../../uidata.dart';
import 'package:flutter/material.dart';


import '../Model/Staff.dart';
import 'Staffpage.dart';
List<StaffModel>staf=[
  StaffModel(1, "lana", "I worh in screen", "+963 258 147", "lanaBeaty@gamil.com", "Aleppo-SSyria", "images/braid4.jpg"),
  StaffModel(2, "Sna", "I worh in screen", "+963 258 147", "lanaBeaty@gamil.com", "Aleppo-SSyria", "images/braid3.jpg"),
  StaffModel(3, "Rama", "I worh in screen", "+963 258 147", "lanaBeaty@gamil.com", "Aleppo-SSyria", "images/braid3.jpg"),
  StaffModel(4, "Layla", "I worh in screen", "+963 258 147", "lanaBeaty@gamil.com", "Aleppo-SSyria", "images/braid3.jpg"),
  StaffModel(5, "Zena", "I worh in screen", "+963 258 147", "lanaBeaty@gamil.com", "Aleppo-SSyria", "images/braid3.jpg"),

];
class staff extends StatelessWidget {
   staff({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(100, 150),
            child: AppBar(
              backgroundColor: Colors.pink.shade700,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Crew",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home_repair_service_rounded),
                  text: "About Staff",
                ),
                Tab(
                  icon: Icon(Icons.home_work_outlined),
                  text: "About Center",
                )
              ]),
            ),
          ),
          body: TabBarView(
            children: [
              Scaffold(
                body: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange.shade200.withOpacity(0.5)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(
                            child: Text(
                              "My Center Contain More of Skill ,we Do not Alon But We Are The Best "
                              "Know About Our Skill ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => StaffItem(staf[index],context),
                        separatorBuilder: (context, index) => Divider(
                          thickness: 10,
                        ),
                        itemCount:staf.length,
                      ),
                      Divider(
                        thickness: 10,
                      )
                    ],
                  ),
                ),
              ),
              Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                      
                        decoration: BoxDecoration(
                            // borderRadius: B
                            ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 150,
                                child: Image.asset("images/map.jpg",fit: BoxFit.fill,),
                              ),

                        ]),
                      ),
                   SizedBox(height: 15,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Location :",style: TextStyle(
                       color: Colors.pink.shade700,
                       fontWeight: FontWeight.bold,
                       fontSize: 25
                     ),),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Aleppo in Strat beast Shaphe restarent",style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),),
                   ),
                      Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Time in Beauty Center:",style: TextStyle(
                       color: Colors.pink.shade700,
                       fontWeight: FontWeight.bold,
                       fontSize: 25
                     ),),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("That is Time Boobing in center",style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),),
                   ),
                      SizedBox(height: 15,),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 15,
                          spacing: 2,
                          children: <Widget>[
                            buttonTime("9:30 - 10:30 AM", Colors.white, Colors.black54),
                            buttonTime(
                                "10:30 - 11:45 AM", Colors.white, Colors.black54),
                            buttonTime(
                                "12:00 - 1:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "2:00 - 4:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "5:30 - 6:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "6:30 - 7:30 PM", Colors.white, Colors.black54),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Time in your home:",style: TextStyle(
                            color: Colors.pink.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("we are giving our Services begining in 9:00 AM to 10:00PM",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                        ),),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }


}

Widget StaffItem(StaffModel staf,context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.orange.shade200.withOpacity(0.5),
         borderRadius: BorderRadius.circular(25)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        leading: CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('${staf.staffImages}'),
        ),
        title: Text('${staf.nameStaff} ',style: TextStyle(
          color: Colors.pink.shade700,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
        subtitle: Text('${staf.staffAddress} ',style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 15,
            fontWeight: FontWeight.w500
        ),),
        trailing: IconButton(icon: Icon(Icons.read_more,size: 40,color: Colors.pink.shade700,), onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StaffPage(nameStaff: '', images: [], imageStaff: "images/braid4.jpg",)));
        },),
      ),
    ),
  );
}
Widget buttonTime(timeText, btnBg, timeBtnColor) {
  return Container(
    width: 200,
    height: 42,
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: MaterialButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        color: btnBg,
        onPressed: () {},
        child: Text(timeText,
            style: TextStyle(
                color: timeBtnColor,
                fontWeight: FontWeight.w600,
                fontSize: 15))),
  );
}