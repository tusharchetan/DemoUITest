import 'package:flutter/material.dart';
import 'package:untitled1/DummyData/HomeScreenDummyData.dart';

class ClinicActivityWidget extends StatefulWidget {

  const ClinicActivityWidget({Key? key}) : super(key: key);

  @override
  _ClinicActivityWidgetState createState() => _ClinicActivityWidgetState();
}

class _ClinicActivityWidgetState extends State<ClinicActivityWidget> {
  HomeScreenDummyData _homeScreenDummyData = new HomeScreenDummyData();
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Clinic Activity",
            style: Theme.of(context).textTheme.headline4,
          ),
         WeekMonthYearSelector(),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 30),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (_, index) {
              return clinicActivityCard(_homeScreenDummyData.clinicActivityData[index]["message"],_homeScreenDummyData.clinicActivityData[index]["number"],_homeScreenDummyData.clinicActivityData[index]["category"]);
            },
            itemCount: 4,
          )
        ],
      ),
    );
  }
Widget WeekMonthYearSelector()
{
  return  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10, right: 10),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Week  "
              ),
              Container(
                height: 15,
                width: 15,
                child: Center(
                    child: Text(
                      "✕",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    )),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xBB414131),
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
          width: 80,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 1, color: Colors.black45),
            borderRadius: BorderRadius.circular(55),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Container(
          child: Center(
              child: Text(
                "Month",
              )),
          width: 80,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 1, color: Colors.black45),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topLeft: Radius.circular(15)),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, right: 10),
        child: Container(
          child: Center(
              child: Text(
                "Year",
              )),
          width: 80,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 1, color: Colors.black45),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15)),
          ),
        ),
      ),
    ],
  );
}
  Widget clinicActivityCard(String message,String number,String category){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(message,textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent),),
              ),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15)

              ),
            ),
            Text(number,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            Text(category)
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
