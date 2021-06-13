import 'package:flutter/material.dart';

import 'samples/ClinicStatusChartSample.dart';

class ClinicStats extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
             Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Clinic Stats',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClinicStatsChartSample(),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
