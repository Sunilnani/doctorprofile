import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> day=["Sun","Mon","Tue","Wed","Thu"];
  List<String> date=["2","3","4","5","6"];
  List<Color> colors=[Colors.white,Colors.white,Colors.greenAccent,Colors.white,Colors.white];
  List <int> count=[648,6,1084,5];
  List<String> operations=["Patients","Years Experience","Surgery","Rating"];
  List<Color> color=[Colors.lightBlue,Colors.greenAccent,Colors.orange,Colors.pinkAccent];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orangeAccent,
                      ),
                      child:Column(
                        children: [
                          SizedBox(height: 25,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.only(right:8.0),
                                child: Icon(Icons.menu,color: Colors.white,),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Center(child: Image.asset("img/doctors.png",height: 300,)),
                          )
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:350.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 70,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Appointment",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: 17),),
                                Text("< August >",style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Container(
                              height: 79,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: colors.length,
                                itemBuilder: (context,index){
                                  return Weekdays(
                                    day: day[index],
                                    date: date[index],
                                    color: colors[index],
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("About",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700,fontSize: 17),),
                                Text("Call now",style: TextStyle(color: Colors.lightBlue,fontSize: 15,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Container(
                              height: 50,
                              width: 320,
                              child: Text("Dr. Jane Faster is a long establised fact that a reader will be distracted by the readable content of a page when looking at its layout The point of using lorem.",style: TextStyle(color: Colors.black54),),
                            ),
                         SizedBox(height: 10,),
                         Container(
                           height: 79,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             shrinkWrap: true,
                             itemCount: color.length,
                             itemBuilder: (context,index){
                               return Patients(
                                 count: count[index],
                                 operations: operations[index],
                                 colors: color[index],
                               );
                             },
                           ),
                         ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:710.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.greenAccent
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Fee: 10.50",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.lightGreen
                              ),
                              child: Text("Appointment",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                            )
                          ],
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:318.0),
                      child: Center(
                        child:Container(
                          height: 80,
                          width: 290,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.lightBlue,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Center(
                                  child: Text("Dr. Jane Foster",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                              ),
                              SizedBox(height: 3,),
                              Text("Senior Cardiologist and Surgeon",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 12),),
                              SizedBox(height: 3,),
                              Text("United State medical college & hospital",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 15),),

                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

      )
    );
  }
}

class Patients extends StatelessWidget {
  const Patients({
    this.count,
    this.operations,
    this.colors,
  }) ;
  final int count;
  final String operations;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Padding(
         padding: const EdgeInsets.all(5.0),
         child: Container(
           height:50,
           width: 70,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(18),
               color:this.colors
           ),
           child: Padding(
             padding: const EdgeInsets.only(top:10.0),
             child: Column(
               children: [
                 Text("648",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                 Text("Patients",style: TextStyle(color: Colors.white),)
               ],
             ),
           ),
         ),
       )
     ],
                        );
  }
}

class Weekdays extends StatelessWidget {
  const Weekdays({
    this.day,
    this.date,
    this.color,
    Key key,
  }) : super(key: key);
  final String day;
  final String date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height:75,
            width: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: this.color
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Column(
                children: [
                  Text(day),
                  Text(date)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
