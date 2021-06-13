import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/DummyData/HomeScreenDummyData.dart';

class UpcomingAppointment extends StatefulWidget {
  const UpcomingAppointment({Key? key}) : super(key: key);

  @override
  _UpcomingAppointmentState createState() => _UpcomingAppointmentState();
}

class _UpcomingAppointmentState extends State<UpcomingAppointment> {
  HomeScreenDummyData _homeScreenDummyData = new HomeScreenDummyData();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20),
      child: AspectRatio(
        aspectRatio: 1.7,
        child: ListView.builder(
            itemCount: _homeScreenDummyData.appointments.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context1, int index) {
              return appointmentDetailsCard(index);
            }),
      ),
    );
  }
  Widget appointmentDetailsCard(int index)
  {
    return Card(
      elevation: 1,
      child: AspectRatio(
        aspectRatio: 1.7,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  statusChip("Paid"),
                  statusChip("Confirmed")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: new AutoSizeText(
                      _homeScreenDummyData.appointments[index]
                      ["first_name"],
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .headline4,

                    ),
                  ),
                  Container(
                    width: 140,
                    child: new AutoSizeText(
                      _homeScreenDummyData.appointments[index]
                      ["appointment_date"] +
                          " ● " +
                          _homeScreenDummyData
                              .appointments[index]
                          ["appointment_time"],
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      style: Theme.of(context)
                          .textTheme
                          .headline5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    _homeScreenDummyData.appointments[index]
                    ["sex"] +
                        " ● " +
                        _homeScreenDummyData
                            .appointments[index]["age"],
                    style: Theme.of(context)
                        .textTheme
                        .headline6,
                  ),
                  new Text(
                    "Last visit on " +
                        _homeScreenDummyData
                            .appointments[index]
                        ["appointment_time"],
                    style: Theme.of(context)
                        .textTheme
                        .headline6,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  height: 1,
                  color: Theme.of(context).shadowColor,
                ),
              ),
              Row(
                children: [
                  chipButtons("RX", true, (){}),
                  chipButtons("SMS", false, (){}),
                  chipButtons("Video", false, (){})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget statusChip(String status) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,bottom: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 4),
          child: Center(
              child: Text(
                status,
                textAlign: TextAlign.center,
              )),
        ),
        decoration: BoxDecoration(
          color:Theme.of(context).indicatorColor,
        ),
      ),
    );
  }

  Widget chipButtons(String name,bool isFilled,Function onPress,)
  {
    return   Padding(
      padding: const EdgeInsets.only(
          bottom: 10, right: 10),
      child: GestureDetector(
        onTap: onPress(),
        child: Container(
          child: Center(
              child: Text(
                name,
                style: TextStyle(color: isFilled?Theme.of(context).accentColor:null),
              )),
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            color: isFilled?Theme.of(context).buttonColor:null,
            shape: BoxShape.rectangle,
            border: Border.all(
                width: 2,
                color: Theme.of(context).buttonColor),
            borderRadius:
            BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
