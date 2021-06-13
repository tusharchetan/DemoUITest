import 'package:flutter/material.dart';
import 'package:untitled1/Constants/HomeScreenConstants/stringConstant.dart';
import 'package:untitled1/Widgets/DemoHomePageWidget/AppointmentWidget.dart';
import 'package:untitled1/Widgets/DemoHomePageWidget/ClinicActivityWidget.dart';
import 'package:untitled1/Widgets/DemoHomePageWidget/clinicStatus/ClinicStats.dart';

class DemoHome extends StatefulWidget {
  const DemoHome({Key? key}) : super(key: key);

  @override
  _DemoHomeState createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(

        elevation: 10.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.grey,
            ),
          ],
        ),
        notchMargin: 6.0,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        onPressed: () => {},
        child: Icon(Icons.done_all),
      ),
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    HomeScreenStringConstant.appointmentHeading,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Container(
                    child: Icon(Icons.add),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                          width: 2, color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            UpcomingAppointment(),
            SizedBox(
              height: 30,
            ),
          ClinicActivityWidget(),
            ClinicStats()
          ],
        ),
      ),
    );
  }
}

PreferredSize appBar(BuildContext context) {
  return PreferredSize(
      preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * .12),
      child: AppBar(
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .09,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .05,
              width: MediaQuery.of(context).size.width * .8,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .1),
              child: new TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(7.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.search),
                    hintText: HomeScreenStringConstant.topSearchBar,
                    fillColor: Colors.white),
              ),
            ),
          ],
        ),
      ));
}
